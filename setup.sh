#!/usr/bin/env bash
# Create a virtual environment and install the roadmap dependencies.
set -euo pipefail

cd "$(dirname "$0")"

if [ ! -d ".venv" ]; then
  python3 -m venv .venv
fi

source .venv/bin/activate
python -m pip install --upgrade pip
python -m pip install -r requirements.txt

echo "Setup complete. Activate with: source .venv/bin/activate"