# AI & Machine Learning Study Guide

A practical, project-based roadmap for learning **artificial intelligence and machine learning from your first lines of Python through advanced specializations, production systems, and research**.

This repository is a study path—not a promise that one course or model will make anyone an expert. Work through the foundations, build things, measure them honestly, and choose a specialization when you know what interests you.

## Start here

1. Read the [roadmap](ROADMAP.md), then choose the stage that fits you. You do **not** need advanced mathematics before you start coding.
2. Begin with [Getting Started](curriculum/00-getting-started.md). If Python is new, follow [Python and Software Skills](curriculum/01-python-and-software.md).
3. Study the modules in order through data skills and classical ML. You can study the math module alongside them.
4. Build projects as you go. Use the [project ladder](projects/README.md) and write up your work with the [project template](projects/PROJECT_TEMPLATE.md).
5. Use the [12-month plan](study-plans/12-month-plan.md) as a flexible default—not a deadline. At 5–8 focused hours a week, it gives a reasonable first pass through the field; go slower or spend longer on a specialty as needed.

## Choose your starting point

| If you can… | Start with… |
|---|---|
| Use a computer but have never programmed | [00 Getting Started](curriculum/00-getting-started.md) → [01 Python](curriculum/01-python-and-software.md) |
| Write basic Python but have not used data | [02 Math & Statistics](curriculum/02-math-and-statistics.md) and [03 Data Skills](curriculum/03-data-skills.md) |
| Analyze data and know basic statistics | [04 Classical ML](curriculum/04-classical-ml.md) |
| Train scikit-learn models and want neural networks | [05 Deep Learning](curriculum/05-deep-learning.md) |
| Want a specialty such as NLP, vision, or reinforcement learning | [06 Specializations](curriculum/06-specializations.md) |
| Want to build with language models | [07 Generative AI & LLMs](curriculum/07-generative-ai-and-llms.md) |
| Can model but cannot ship or maintain a system | [08 MLOps](curriculum/08-mlops.md) and [09 Responsible AI](curriculum/09-responsible-ai.md) |
| Want to read papers or do advanced work | [10 Research & Advanced Study](curriculum/10-research-and-advanced-study.md) |

## The learning path

1. **Computing and Python** — write, debug, test, and version small programs.
2. **Math and data** — build working intuition for statistics, probability, linear algebra, and real-world datasets.
3. **Classical ML** — frame a problem, establish a baseline, split data correctly, train models, and evaluate them.
4. **Deep learning** — understand tensors, automatic differentiation, neural-network training, and transfer learning.
5. **Choose a specialty** — for example language, computer vision, time series, recommenders, causal inference, or reinforcement learning.
6. **Generative AI and deployment** — evaluate LLM applications, build reliable systems, and monitor them after release.
7. **Responsible practice and research** — consider privacy, fairness, security, licensing, reproducibility, and limitations throughout.

See [ROADMAP.md](ROADMAP.md) for stage-by-stage outcomes and exit checks.

## A study rhythm that works

For each topic, repeat this loop:

- **Learn:** read one lesson or chapter and write down the main idea in your own words.
- **Reproduce:** implement a small example without blindly copying it.
- **Challenge:** change an assumption, compare with a simple baseline, or test a failure case.
- **Explain:** record what worked, what did not, and what you still do not know.

A useful weekly split is roughly 2 hours of concepts, 2–4 hours of coding, and 1 hour of review or writing. Keep a short experiment log. Do not try to consume every link in [Resources](resources/README.md); choose one main course or book and use the rest as references.

## Repository map

- [`ROADMAP.md`](ROADMAP.md) — levels, milestones, and learning tracks.
- [`curriculum/`](curriculum/) — topic guides, exercises, checkpoints, and next steps.
- [`study-plans/`](study-plans/) — a flexible 48-week plan and reusable weekly log.
- [`projects/`](projects/) — project ideas, quality checklist, and write-up template.
- [`examples/`](examples/) — a first runnable classification example.
- [`resources/`](resources/README.md) — selected books, courses, documentation, and datasets.
- [`glossary.md`](glossary.md) — common terms in plain language.
- [`PUBLISHING.md`](PUBLISHING.md) — how to publish this folder as a GitHub repository.

## What “ready for the next level” means

You can explain the problem and assumptions, implement a reasonable baseline, choose metrics that fit the use case, prevent data leakage, inspect errors, communicate uncertainty and limitations, and reproduce your result. For production work, add tests, monitoring, security, and a plan for what happens when the system fails.

## Tools and prerequisites

The core examples use Python. A recent supported Python 3 release, Git, a code editor, and a virtual environment are enough to begin. You can use Jupyter or a hosted notebook service if your computer is limited. Install deep-learning frameworks only when you reach that module; GPU access is optional for the learning exercises.

AI libraries and APIs change quickly. Learn the durable ideas here, then check the official documentation for the exact versions and hardware instructions you use. Never upload private, confidential, or sensitive data to a third-party tool without authorization.

## Contributing

Corrections, clearer explanations, accessible alternatives, and carefully checked learning resources are welcome. Please read [CONTRIBUTING.md](CONTRIBUTING.md). The guide is educational and cannot replace domain expertise, professional advice, or safety review for high-impact applications.
