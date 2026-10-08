#!/usr/bin/env bash
# AI/ML developer stack for Fedora 44 (no NVIDIA GPU, no root required)
# Reproduces: Node toolchain, uv/Python ML env, Ollama (user service),
# Qdrant, LiteLLM proxy. Idempotent - safe to re-run.
#
#   bash ~/setup-ai-ml-stack.sh
#
# Upstream reference: https://github.com/brevdev/setup-scripts (Ubuntu/apt, GPU boxes)
# Everything here is what was needed to make that stack work on Fedora without sudo.

set -euo pipefail

OLLAMA_VERSION="${OLLAMA_VERSION:-latest}"     # pin e.g. OLLAMA_VERSION=v0.35.0
OLLAMA_MODEL="${OLLAMA_MODEL:-llama3.2:1b}"   # keep it 1B: CPU inference is ~14 tok/s
PYTHON_VERSION="${PYTHON_VERSION:-3.12}"
STACK_DIR="$HOME/ml-env"

say()  { printf '\n\033[1;36m==> %s\033[0m\n' "$*"; }
warn() { printf '\033[1;33m!!  %s\033[0m\n' "$*"; }
die()  { printf '\033[1;31mxx  %s\033[0m\n' "$*" >&2; exit 1; }

[ "$(id -u)" -ne 0 ] || die "Run as your normal user, not root. This script needs no sudo."
command -v dnf >/dev/null || warn "Not Fedora; dnf-based steps may need adjusting."

# ---------------------------------------------------------------------------
# 1. Node toolchain (nvm, node LTS, pnpm, tsc/eslint/prettier)
# ---------------------------------------------------------------------------
say "Node toolchain"
export NVM_DIR="$HOME/.nvm"
if [ ! -d "$NVM_DIR" ]; then
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
else
  echo "nvm already present"
fi
# shellcheck disable=SC1091
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
if [ ! -d "$NVM_DIR/versions/node" ] || ! nvm ls --no-colors 2>/dev/null | grep -q "v2[0-9]"; then
  nvm install --lts && nvm alias default lts/*
fi
nvm use --lts >/dev/null 2>&1 || nvm use default

# pnpm. Note the global bin dir is $PNPM_HOME/bin - brev's script omits /bin,
# which makes every `pnpm add -g` fail with ERR_PNPM_GLOBAL_BIN_DIR_NOT_IN_PATH.
export PNPM_HOME="$HOME/.local/share/pnpm"
mkdir -p "$PNPM_HOME/bin"
command -v pnpm >/dev/null || npm install -g pnpm
for rc in "$HOME/.zshrc" "$HOME/.bashrc"; do
  touch "$rc"
  grep -q 'PNPM_HOME' "$rc" || cat >> "$rc" <<'EOF'

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH="$PNPM_HOME/bin:$PATH"
EOF
done
export PATH="$PNPM_HOME/bin:$PATH"
pnpm add -g typescript tsx eslint prettier >/dev/null

# ---------------------------------------------------------------------------
# 2. uv + Python ML environment
# ---------------------------------------------------------------------------
say "uv + Python $PYTHON_VERSION ML environment"
[ -x "$HOME/.local/bin/uv" ] || curl -LsSf https://astral.sh/uv/install.sh | sh
export PATH="$HOME/.local/bin:$PATH"
for rc in "$HOME/.zshrc" "$HOME/.bashrc"; do
  grep -q '.local/bin' "$rc" || printf '\nexport PATH="$HOME/.local/bin:$PATH"\n' >> "$rc"
done

mkdir -p "$STACK_DIR"
[ -x "$STACK_DIR/.venv/bin/python" ] || (cd "$STACK_DIR" && uv venv --python "$PYTHON_VERSION" .venv)
PY="$STACK_DIR/.venv/bin/python"

uv pip install --python "$PY" \
  ipython jupyterlab jupyter requests httpx python-dotenv \
  pandas numpy scipy matplotlib seaborn plotly scikit-learn \
  ruff black pytest mypy qdrant-client openai
# CPU-only torch: the default index would drag in multi-GB CUDA wheels.
uv pip install --python "$PY" --index-url https://download.pytorch.org/whl/cpu torch torchvision
uv pip install --python "$PY" transformers datasets accelerate sentencepiece

# ---------------------------------------------------------------------------
# 3. Ollama as a user-space systemd service
# ---------------------------------------------------------------------------
say "Ollama (CPU inference, no root)"
OLLAMA_HOME="$HOME/.local/opt/ollama"
if [ ! -x "$OLLAMA_HOME/bin/ollama" ]; then
  tag="$OLLAMA_VERSION"
  if [ "$tag" = "latest" ]; then
    tag=$(curl -s https://api.github.com/repos/ollama/ollama/releases/latest \
      | python3 -c "import json,sys; print(json.load(sys.stdin)['tag_name'])")
  fi
  asset="ollama-linux-amd64.tar.zst"
  case "$(uname -m)" in
    aarch64|arm64) asset="ollama-linux-arm64.tar.zst" ;;
  esac
  tmp=$(mktemp -d)
  echo "downloading ollama $tag (~1.4 GB, slow on this link)"
  curl -fL --retry 3 -o "$tmp/$asset" \
    "https://github.com/ollama/ollama/releases/download/$tag/$asset"
  mkdir -p "$tmp/root"
  zstd -d -c "$tmp/$asset" | tar -xf - -C "$tmp/root"
  mkdir -p "$OLLAMA_HOME/bin"
  install -m755 "$tmp/root/bin/ollama" "$OLLAMA_HOME/bin/ollama"
  # lib/ollama is NOT optional: it holds llama-server. Without it the model
  # downloads fine and then every inference call returns HTTP 500.
  cp -r "$tmp/root/lib/ollama" "$OLLAMA_HOME/lib"
  rm -rf "$tmp"
fi
ln -sf "$OLLAMA_HOME/bin/ollama" "$HOME/.local/bin/ollama"

mkdir -p "$HOME/.config/systemd/user"
cat > "$HOME/.config/systemd/user/ollama.service" <<EOF
[Unit]
Description=Ollama Service (user)
After=network-online.target

[Service]
Type=simple
Environment="HOME=%h"
Environment="PATH=%h/.local/bin:/usr/local/bin:/usr/bin:/bin"
Environment="OLLAMA_HOST=127.0.0.1:11434"
Environment="OLLAMA_MODELS=%h/.local/share/ollama/models"
Environment="LD_LIBRARY_PATH=%h/.local/opt/ollama/lib"
ExecStart=%h/.local/opt/ollama/bin/ollama serve
Restart=always
RestartSec=3

[Install]
WantedBy=default.target
EOF
systemctl --user daemon-reload
systemctl --user enable --now ollama
systemctl --user restart ollama
for _ in $(seq 1 15); do
  sleep 2
  curl -sf http://127.0.0.1:11434/api/version >/dev/null 2>&1 && break
done
curl -sf http://127.0.0.1:11434/api/version >/dev/null \
  || die "Ollama did not come up: journalctl --user -u ollama -n 40"

if ollama list 2>/dev/null | grep -q "$OLLAMA_MODEL"; then
  echo "model $OLLAMA_MODEL already present"
else
  # One retry: the blob CDN intermittently fails DNS mid-pull.
  ollama pull "$OLLAMA_MODEL" || { echo "retrying pull..."; ollama pull "$OLLAMA_MODEL"; }
fi

# ---------------------------------------------------------------------------
# 4. Qdrant (vector DB) - localhost only, TLS + API key
# ---------------------------------------------------------------------------
say "Qdrant vector database"
[ -f "$HOME/.qdrant_api_key.env" ] || {
  umask 077
  printf '# Qdrant API key - keep private\nQDRANT_API_KEY=%s\n' \
    "$(openssl rand -base64 32 | tr -d '=+/' | cut -c1-32)" > "$HOME/.qdrant_api_key.env"
}
QK=$(grep '^QDRANT_API_KEY=' "$HOME/.qdrant_api_key.env" | cut -d= -f2)

CERT_DIR="$HOME/qdrant_certs"
if [ ! -f "$CERT_DIR/cert.pem" ]; then
  mkdir -p "$CERT_DIR"
  cat > "$CERT_DIR/openssl.cnf" <<'EOF'
[ req ]
default_bits       = 2048
prompt             = no
default_md         = sha256
distinguished_name = dn
x509_extensions    = v3_req

[ dn ]
C  = US
ST = State
L  = City
O  = Qdrant
CN = localhost

[ v3_req ]
subjectAltName = @alt_names

[ alt_names ]
DNS.1 = localhost
IP.1  = 127.0.0.1
EOF
  openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout "$CERT_DIR/key.pem" -out "$CERT_DIR/cert.pem" \
    -config "$CERT_DIR/openssl.cnf" -extensions v3_req
  chmod 600 "$CERT_DIR/key.pem"
fi
mkdir -p "$HOME/qdrant_storage"

docker rm -f qdrant >/dev/null 2>&1 || true
docker run -d --name qdrant --restart unless-stopped \
  -p 127.0.0.1:6333:6333 -p 127.0.0.1:6334:6334 \
  -e QDRANT__SERVICE__API_KEY="$QK" \
  -e QDRANT__SERVICE__ENABLE_TLS=true \
  -e QDRANT__TLS__CERT=/qdrant/certs/cert.pem \
  -e QDRANT__TLS__KEY=/qdrant/certs/key.pem \
  -v "$HOME/qdrant_storage:/qdrant/storage" \
  -v "$CERT_DIR:/qdrant/certs:ro" \
  qdrant/qdrant:latest >/dev/null

# ---------------------------------------------------------------------------
# 5. LiteLLM proxy
# ---------------------------------------------------------------------------
say "LiteLLM proxy"
mkdir -p "$HOME/.litellm"
if [ ! -f "$HOME/.litellm/.env" ]; then
  umask 077
  # Upstream's config has no master key; current LiteLLM refuses to boot without one.
  printf '# LiteLLM secrets - keep private\nLITELLM_MASTER_KEY=sk-%s\n' \
    "$(openssl rand -hex 32)" > "$HOME/.litellm/.env"
  chmod 600 "$HOME/.litellm/.env"
fi
if [ -f "$HOME/.litellm/.env" ] && ! grep -q '^LITELLM_MASTER_KEY=' "$HOME/.litellm/.env"; then
  printf 'LITELLM_MASTER_KEY=sk-%s\n' "$(openssl rand -hex 32)" >> "$HOME/.litellm/.env"
fi

cat > "$HOME/.litellm/config.yaml" <<'EOF'
model_list:
  # Uncomment and set keys in ~/.litellm/.env to enable the hosted models.
  # They show as unhealthy in /health until real credentials exist.
  # - model_name: gpt-4
  #   litellm_params:
  #     model: gpt-4
  #     api_key: os.environ/OPENAI_API_KEY
  # - model_name: claude-3-5-sonnet
  #   litellm_params:
  #     model: claude-3-5-sonnet-20241022
  #     api_key: os.environ/ANTHROPIC_API_KEY

  # Local Ollama. Host networking is required: from the default bridge network
  # the container's 127.0.0.1 is the container, not the host.
  - model_name: llama3.2
    litellm_params:
      model: ollama/llama3.2:1b
      api_base: http://127.0.0.1:11434

litellm_settings:
  drop_params: true
EOF

docker rm -f litellm >/dev/null 2>&1 || true
docker run -d --name litellm --restart unless-stopped \
  --network host \
  --env-file "$HOME/.litellm/.env" \
  -v "$HOME/.litellm/config.yaml:/app/config.yaml" \
  ghcr.io/berriai/litellm:main-latest \
  --config /app/config.yaml --port 4000 --num_workers 4 >/dev/null

# ---------------------------------------------------------------------------
# 6. Example scripts
# ---------------------------------------------------------------------------
say "Example scripts"
mkdir -p "$HOME/ollama-examples"
cat > "$HOME/ollama-examples/chat.sh" <<EOF
#!/usr/bin/env bash
ollama run $OLLAMA_MODEL
EOF
cat > "$HOME/ollama-examples/api_example.py" <<EOF
#!/usr/bin/env python3
import requests

def chat(prompt):
    r = requests.post('http://localhost:11434/api/generate', json={
        'model': '$OLLAMA_MODEL', 'prompt': prompt, 'stream': False}, timeout=300)
    return r.json()['response']

if __name__ == '__main__':
    print(chat("Why is the sky blue? Answer in one sentence."))
EOF
chmod +x "$HOME/ollama-examples/"*

cat > "$HOME/qdrant_example.py" <<'PYEOF'
#!/usr/bin/env python3
"""Qdrant vector search. Differs from brev's version: reads the API key from
~/.qdrant_api_key.env, connects over HTTPS (self-signed), and uses
query_points()/create_collection() which replaced search()/recreate_collection()."""
import os
from qdrant_client import QdrantClient
from qdrant_client.models import Distance, VectorParams, PointStruct

api_key = os.environ.get("QDRANT_API_KEY")
if not api_key:
    with open(os.path.expanduser("~/.qdrant_api_key.env")) as fh:
        for line in fh:
            if line.startswith("QDRANT_API_KEY="):
                api_key = line.split("=", 1)[1].strip()
                break
if not api_key:
    raise SystemExit("QDRANT_API_KEY not found; check ~/.qdrant_api_key.env")

client = QdrantClient(host="localhost", port=6333, api_key=api_key, https=True, verify=False)

name = "test_collection"
if client.collection_exists(name):
    client.delete_collection(name)
client.create_collection(name, vectors_config=VectorParams(size=4, distance=Distance.COSINE))

client.upsert(name, points=[
    PointStruct(id=1, vector=[0.05, 0.61, 0.76, 0.74], payload={"city": "Berlin"}),
    PointStruct(id=2, vector=[0.19, 0.81, 0.75, 0.11], payload={"city": "London"}),
    PointStruct(id=3, vector=[0.36, 0.55, 0.47, 0.94], payload={"city": "Paris"}),
])

for hit in client.query_points(name, query=[0.2, 0.1, 0.9, 0.7], limit=3).points:
    print(f"  - {hit.payload['city']}: score={hit.score:.3f}")
print("Qdrant is working.")
PYEOF
chmod +x "$HOME/qdrant_example.py"

# ---------------------------------------------------------------------------
# 7. Verify
# ---------------------------------------------------------------------------
say "Verifying"
QK=$(grep '^QDRANT_API_KEY=' "$HOME/.qdrant_api_key.env" | cut -d= -f2)
LITELLM_KEY=$(grep '^LITELLM_MASTER_KEY=' "$HOME/.litellm/.env" | cut -d= -f2)

for _ in $(seq 1 15); do
  sleep 20
  q=$(curl -sk -o /dev/null -w '%{http_code}' -H "api-key: $QK" https://127.0.0.1:6333/collections -m 10 || true)
  l=$(curl -s -o /dev/null -w '%{http_code}' -H "Authorization: Bearer $LITELLM_KEY" http://127.0.0.1:4000/health -m 10 || true)
  [ "$q" = "200" ] && [ "$l" = "200" ] && break
  echo "  waiting (qdrant:$q litellm:$l)"
done

cat <<EOF

Service    Status
ollama     $(systemctl --user is-active ollama)  $(curl -s http://127.0.0.1:11434/api/version -m 5)
litellm    $(docker inspect -f '{{.State.Status}}' litellm 2>/dev/null)  http://127.0.0.1:4000
qdrant     $(docker inspect -f '{{.State.Status}}' qdrant 2>/dev/null)   https://127.0.0.1:6333
python     $("$PY" --version 2>&1)  torch $("$PY" -c 'import torch;print(torch.__version__)')

Next:
  export PATH="\$HOME/.local/bin:\$PATH"
  ollama run $OLLAMA_MODEL
  source $STACK_DIR/.venv/bin/activate
  jupyter lab
  $PY $HOME/qdrant_example.py

Note: CPU-only inference, ~14 tok/s for a 1B model. gpt-4/claude entries in
~/.litellm/config.yaml stay unhealthy until you add real keys to ~/.litellm/.env.
EOF
