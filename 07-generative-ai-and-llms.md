# 07 — Generative AI and Large Language Models

**Goal:** Understand what language models can and cannot do, choose an appropriate application pattern, evaluate it on representative cases, and account for privacy, security, cost, and failure.

This module builds on the data, ML, and deep-learning foundations. You do not need to train a large model from scratch to learn or build useful applications.

## Foundations

- **Tokens and tokenization:** models process token IDs, not words exactly as people see them. Tokenization affects context length, cost, and behavior.
- **Embeddings:** vectors that represent text or other content for similarity search or downstream use. Similarity is not proof of truth or relevance.
- **Transformer and attention:** a common architecture for processing sequences. Learn the high-level mechanism and its limitations; do not treat attention weights as a complete explanation.
- **Pretraining and instruction tuning:** broad next-token training and later adaptation can produce useful behavior, but do not guarantee factuality, reasoning, or safety.
- **Inference:** model outputs are sampled or decoded from learned distributions and can vary with settings, model version, and prompt.

## Choose the simplest suitable pattern

| Need | Consider | Important limitation |
|---|---|---|
| Generate or transform text with a clear specification | Prompting an existing model | Output may vary or invent details; define and test the format |
| Answer using a changing or private approved knowledge base | Retrieval-augmented generation (RAG) | Retrieval can miss or mis-rank evidence; generated answers can still be unsupported |
| Adapt style or task behavior with examples | Fine-tuning or parameter-efficient tuning | Needs suitable rights, data, evaluation, and ongoing maintenance; does not reliably add current facts |
| Perform a multi-step action | A constrained tool-using workflow | Tools create security and authorization risks; limit permissions and require checks |
| Make a high-stakes decision | Often use a human-led process or a validated specialized system instead | A fluent answer is not evidence of correctness or suitability |

## A responsible application workflow

1. **Define user need and boundaries.** State what the system will do, what it must not do, and when it should abstain or escalate.
2. **Select a model and data policy.** Check model documentation, license/terms, versioning, retention, geographic restrictions, and whether inputs may be used for provider training.
3. **Build the smallest prototype.** Keep prompts, retrieval logic, and settings versioned; avoid sending secrets or sensitive data to an unapproved service.
4. **Create an evaluation set before tuning.** Use representative, permissioned examples covering normal use, ambiguity, edge cases, and known failure modes. Separate development examples from a final evaluation set.
5. **Measure the whole system.** Evaluate answer correctness, evidence support, retrieval quality, refusal and escalation behavior, latency, cost, and user experience—not just whether an answer sounds good.
6. **Test security.** Probe prompt injection, malicious documents, data extraction, unauthorized tool use, and over-broad system permissions. Treat retrieved documents and user input as untrusted.
7. **Pilot and monitor.** Provide user-facing limits, feedback and incident paths, version tracking, rate/cost limits, and a plan to turn off or roll back the system.

## RAG topics to learn

Document parsing and chunking; metadata and access controls; embedding and lexical retrieval; ranking and reranking; citation and evidence presentation; retrieval metrics; answer evaluation; freshness and deletion; and prompt-injection defenses. Evaluate retrieval separately from generation so failures can be located.

## Fine-tuning topics to learn

Data quality and permission; train/validation/test splits; prompt and response formats; overfitting; parameter-efficient methods; model and tokenizer versions; evaluation against the base model; and deployment constraints. Fine-tuning is not a substitute for a curated knowledge source when facts change frequently.

## Practice project

Build a small question-answering prototype over a handful of public, licensed documents. Include source links in answers, create a test set with answerable and unanswerable questions, measure retrieval and answer support separately, add prompt-injection tests, and write a limitations page. Do not use confidential documents unless you have explicit authorization and a suitable data-handling arrangement.

## Common traps

- Assuming fluent language means true or well-supported output.
- Evaluating on examples used to tune prompts or retrieval.
- Treating a vendor benchmark as evidence for your specific use case.
- Sending private content to a model endpoint without checking terms and retention.
- Giving a model broad tool access when a restricted workflow would suffice.
- Confusing an agent demo with a reliable, secure production system.

## Checkpoint

You can justify the application pattern, measure the whole system on a held-out set, show failure cases, explain data and model terms, defend tool permissions, and state when the system abstains or escalates. Continue to [MLOps](08-mlops.md) and [Responsible AI](09-responsible-ai.md).

## Selected resources

- [Hugging Face Learn](https://huggingface.co/learn) — courses and learning paths for NLP, transformers, and related tools.
- [Stanford CS224N](https://web.stanford.edu/class/cs224n/) — NLP with deep learning course materials.
- [Full Stack Deep Learning](https://fullstackdeeplearning.com/) — practical system development and evaluation topics.
- Consult the official documentation and model/system cards for the exact model you use; capabilities, terms, and interfaces change frequently.
