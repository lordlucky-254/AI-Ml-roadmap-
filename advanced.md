# Advanced Stage

Goal: work confidently at the frontier — LLMs, production ML, and training at scale.

## Module 8 — LLMs & Generative AI (4–6 weeks)

- Transformer internals: attention, KV-cache, positional embeddings
- Pretraining vs fine-tuning vs in-context learning
- Prompting, function/tool calling, structured outputs
- RAG: chunking, embeddings, vector databases, retrieval evaluation
- Fine-tuning an LLM (LoRA/QLoRA) on a small dataset
- Tokenizer behavior, context length, quantization (GGUF/AWQ)

**Project:** Build a RAG assistant over a domain corpus with a vector DB, evaluated on a hand-built QA set. Then fine-tune a small LoRA and measure the delta.

## Module 9 — MLOps (3–4 weeks)

- Experiment tracking (MLflow/W&B) and reproducible runs
- Model registry and versioning
- Serving: FastAPI inference service, ONNX or TensorRT, GPU serving (vLLM/TGI)
- CI/CD for models, evaluation gates, drift detection
- Docker basics and cloud deployment (Kubernetes/GCP/AWS)
- Data & model pipelines: versioning, lineage, monitoring

**Project:** Containerize the fine-tuned model, expose an API, add a second model behind an A/B gate, and monitor latency/drift on real traffic.

## Module 10 — Distributed & High-Performance Training (3+ weeks)

- Multi-GPU: DataParallel vs DistributedDataParallel, batching strategies
- Mixed precision (FP16/BF16), gradient accumulation, gradient checkpointing
- Memory optimization: ZeRO, DeepSpeed, FSDP
- Long-context and large-batch training considerations
- Profiling: GPU utilization, memory, throughput; a bit of CUDA

**Project:** Pre-train or fine-tune a small model on multiple GPUs and document a scaling curve (throughput vs GPUs).

## Module 11 — Specializations (ongoing)

Pick based on interest; the earlier modules are the common core:

- **NLP/LLM research:** alignment (RLHF/DPO/GRPO), eval, or advanced RAG
- **Computer vision:** detection/segmentation, diffusion models, multimodal
- **ML systems:** inference optimizations, kernels, serving at 1M QPS
- **ML engineering:** MLOps platforms, feature stores, platform team work

## Research practice (recommended)

- Read 1 paper/week; take structured notes (problems → method → results → limitations)
- Reimplement one small paper or blog codebase per month
- Write up experiments as short posts; publishing consolidates learning

## Finish line

- You can ship a production-grade model (API + monitoring + eval)
- You can scale training across GPUs and reason about memory/throughput
- You can read a paper and implement its core idea
- Choose a specialization and go deep — the roadmap splits here