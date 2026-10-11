# Learning Roadmap

This roadmap is organized by **skills and evidence of learning**, not by job titles or fashionable tools. Move at your own pace. Some learners will move quickly through familiar material; others will need more time with programming, mathematics, or a chosen domain.

## Levels at a glance

| Level | Main goal | Typical evidence |
|---|---|---|
| 0 — Orientation | Set up a learning environment and understand the field | You can run a small Python program and describe AI, ML, and deep learning in plain language |
| 1 — Beginner | Work with Python, data, and simple predictive models | A clean notebook or script, a baseline, a correct holdout split, and a short explanation |
| 2 — Intermediate | Build reliable classical ML and neural-network experiments | Reproducible comparisons, appropriate metrics, error analysis, and a completed project |
| 3 — Advanced applied | Specialize, build systems, and evaluate failure modes | A tested, documented application with a defensible evaluation and risk discussion |
| 4 — Research / expert | Develop or investigate methods beyond routine application | A reproducible paper reproduction, careful ablation, or a clearly scoped research contribution |

“Expert” is not a fixed finish line. The field is too broad for one person to master every subfield.

## Stage 0 — Orientation and setup

**Focus:** What AI and ML mean; the difference between a rule-based program, a statistical model, and a neural network; files, the terminal, Git, and how to run Python.

**Study:** [Getting Started](curriculum/00-getting-started.md).

**Move on when:** You can install or open a Python environment, run a script, save your work, and explain what a model learns from examples.

## Stage 1 — Programming and data foundations

**Focus:** Python, functions, data structures, debugging, basic tests, NumPy, tables, plots, and SQL. Learn the math alongside the coding rather than waiting for a “perfect” math background.

**Study:** [Python and Software Skills](curriculum/01-python-and-software.md), [Math and Statistics](curriculum/02-math-and-statistics.md), and [Data Skills](curriculum/03-data-skills.md).

**Move on when:** You can load an unfamiliar small dataset, inspect and clean it, make a clear visualization, and write a short script or notebook another person can rerun.

## Stage 2 — Classical machine learning

**Focus:** Problem framing, train/validation/test splits, baselines, regression, classification, decision trees and ensembles, cross-validation, feature pipelines, metrics, error analysis, and common forms of leakage.

**Study:** [Classical ML](curriculum/04-classical-ml.md).

**Move on when:** You can compare a simple baseline with a stronger model without touching the test set repeatedly, justify your metric, and explain where the model is likely to fail.

## Stage 3 — Deep learning

**Focus:** Tensors, gradients, loss functions, optimization, training loops, regularization, neural-network architectures, transfer learning, and GPU/reproducibility basics.

**Study:** [Deep Learning](curriculum/05-deep-learning.md).

**Move on when:** You can train a small network, diagnose overfitting or optimization trouble, save and reload a model, and explain what your evaluation does—and does not—show.

## Stage 4 — Specialization

Choose one area first; add a second only after completing a substantial project in the first. Options and suggested prerequisites are in [Specializations](curriculum/06-specializations.md).

- **Natural language processing:** tokenization, embeddings, language models, task-specific evaluation.
- **Computer vision:** image data, convolutional networks, augmentation, transfer learning, vision transformers.
- **Time series:** temporal splits, forecasting baselines, seasonality, backtesting, leakage controls.
- **Recommendation systems:** ranking, retrieval, implicit feedback, offline/online evaluation.
- **Causal inference or graphs:** causal questions, assumptions, interventions, graph representations.
- **Reinforcement learning:** agents, environments, reward design, exploration, stability.

**Move on when:** You have a domain-appropriate baseline, a realistic evaluation plan, a documented project, and a clear account of limitations.

## Stage 5 — Generative AI, systems, and deployment

**Focus:** LLM capabilities and limits, prompting, embeddings, retrieval-augmented generation (RAG), fine-tuning trade-offs, application evaluation, safety, APIs, testing, deployment, monitoring, and costs.

**Study:** [Generative AI and LLMs](curriculum/07-generative-ai-and-llms.md), [MLOps](curriculum/08-mlops.md), and [Responsible AI](curriculum/09-responsible-ai.md).

**Move on when:** You can show an end-to-end application, evaluate it on representative cases, protect its data and interfaces, monitor its behavior, and describe a safe fallback.

## Stage 6 — Research and advanced study

**Focus:** Reading papers, reproducing results, controlled experiments, ablations, statistical uncertainty, distributed training or inference where relevant, and research communication.

**Study:** [Research and Advanced Study](curriculum/10-research-and-advanced-study.md).

**Move on when:** You can state a precise question, compare against a strong baseline, keep an auditable experiment record, and share a result that another person can inspect.

## Tracks by goal

- **AI/ML generalist:** Complete Stages 0–3, then do one project in a specialty and one small deployment.
- **Data analyst moving into ML:** Emphasize Python, SQL, statistics, data quality, classical ML, and communication before deep learning.
- **Applied data scientist:** Emphasize experiment design, causal reasoning, validation, stakeholder-facing analysis, and one specialty.
- **ML engineer:** Emphasize software engineering, pipelines, serving, testing, monitoring, data/model versioning, and deployment. Learn modeling well enough to evaluate model changes.
- **LLM application developer:** Do not skip classical ML and evaluation. Then study [LLMs](curriculum/07-generative-ai-and-llms.md), retrieval, security, and production operations.
- **Research-oriented learner:** Strengthen math and fundamentals, implement papers, reproduce results, and learn a specialty deeply. Read [Research and Advanced Study](curriculum/10-research-and-advanced-study.md).

## Math: learn the amount you need, then deepen it

A practical first pass needs algebra and functions, vectors and matrices, derivatives and the chain rule, probability, descriptive and inferential statistics, and optimization intuition. Proofs, measure theory, advanced statistics, information theory, and numerical methods matter more in some research areas than in an entry-level applied project. See the [math module](curriculum/02-math-and-statistics.md) for tiers and practice ideas.

## Keep your progress honest

For every project, keep a record of the dataset and its license, the split strategy, a simple baseline, the metric and why it fits, what you tried, error analysis, limitations, and how to rerun the work. A high score alone is not evidence of a useful or safe system.
