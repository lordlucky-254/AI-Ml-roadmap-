# Flexible 12-Month Study Plan

This is a **48-study-week** plan, not a promise or deadline. It assumes roughly **5–8 focused hours per week** and some familiarity with everyday computer use. Add weeks wherever you need practice, take breaks, and use the [weekly template](weekly-study-template.md) to keep notes. If you already know a topic, demonstrate the checkpoint and move on.

The plan deliberately moves from fundamentals to projects, deep learning, specialization, and deployment. It does not attempt to make one learner an expert in every subfield.

| Week | Focus | Suggested evidence / deliverable |
|---:|---|---|
| 1 | Set up Python, editor, terminal, and Git; read the learning roadmap | Run a short script; write down your goal and starting level |
| 2 | Python types, conditionals, loops, and collections | Small program that summarizes a list of records |
| 3 | Functions, files, debugging, and basic tests | CSV summary script with tests for edge cases |
| 4 | NumPy and notebook hygiene | Notebook or script with a clean, rerunnable analysis |
| 5 | pandas: load, inspect, filter, group, join | Data dictionary and clear summary table |
| 6 | SQL basics and visualization | A few SQL queries and labeled plots |
| 7 | Data quality, missingness, provenance, licensing | One-page data card for a public dataset |
| 8 | Probability, descriptive statistics, and linear-algebra intuition | Hand-worked examples plus a short explanation in your own words |
| 9 | Problem framing, prediction time, data splits, and a baseline | Written task definition, split rationale, and baseline metric |
| 10 | Regression and error analysis | Compare a mean baseline with a regression model |
| 11 | Classification, confusion matrix, precision, and recall | Explain which errors matter for a chosen example |
| 12 | Pipelines and a complete first supervised experiment | Reproducible notebook/script and a short results note |
| 13 | Decision trees and feature handling | Compare a tree with a linear model on the same split |
| 14 | Ensembles and regularization | Small experiment with random forest or gradient boosting |
| 15 | Cross-validation, tuning, calibration, and leakage | Write down what data informed each model decision |
| 16 | Begin an intermediate tabular project | Project question, data card, baseline, evaluation plan |
| 17 | Clustering and dimensionality reduction | Exploratory experiment; state why clusters may not be meaningful groups |
| 18 | Feature engineering and imbalanced outcomes | Compare metrics suitable for a rare class |
| 19 | Interpretability, group error checks, and uncertainty | Error-analysis section, including caveats |
| 20 | Finish project 1 | Public-ready README/report with limitations and rerun steps |
| 21 | Tensors and framework basics | Inspect tensor shapes and compute a forward pass |
| 22 | Autograd, loss, gradients, and an optimizer | Train a tiny MLP and plot training/validation curves |
| 23 | Overfitting, regularization, and training diagnostics | Deliberately overfit a small subset, then diagnose it |
| 24 | Deep-learning checkpoint | Compare the neural model with a simple baseline; explain the difference |
| 25 | CNNs or another architecture suited to your data | Small model or architecture reading notes |
| 26 | Transfer learning and data augmentation | Fine-tune a small pretrained model where the license permits |
| 27 | Validation, checkpointing, reproducibility, and compute | Record versions, settings, and model selection procedure |
| 28 | Finish a small deep-learning project | Report with representative errors and known limitations |
| 29 | Choose a specialty: NLP, vision, time series, recommendation, RL, or another | State why you chose it and identify a good baseline |
| 30 | Learn domain-specific data and evaluation | Data card plus evaluation plan for the specialty |
| 31 | Reproduce a simple specialty baseline | Code and experiment log |
| 32 | Specialty checkpoint | Short report showing results, errors, and limitations |
| 33 | LLM and generative-AI foundations | Explain tokenization, embeddings, and model limitations |
| 34 | Prompting, structured output, and evaluation examples | Versioned prompts and a small held-out test set |
| 35 | Retrieval or another application pattern | Prototype with public, licensed material and evidence links |
| 36 | Security, privacy, and application evaluation | Prompt-injection/abstention tests and a data-handling note |
| 37 | Package one project for someone else to run | Clean setup instructions and pinned/recorded dependencies |
| 38 | Add tests and data/model validation | Tests that catch a broken input schema and a behavior regression |
| 39 | Serve predictions with a batch job or small API | Working interface with input validation and error handling |
| 40 | Monitoring, versioning, rollback, and responsible-AI review | Written operational and risk plan; do not deploy to real users by default |
| 41 | Select a capstone question with a real learning purpose | Scope, users, risks, data source/license, and success criteria |
| 42 | Build data pipeline and baseline | Reproducible baseline and documented split |
| 43 | Implement one justified improvement | Comparison against baseline; experiment log |
| 44 | Error analysis, robustness, and privacy/fairness review | Failure cases and mitigation discussion |
| 45 | Finish the model or application | End-to-end result with tests and version information |
| 46 | Write the capstone report and improve documentation | Use the [project template](../projects/PROJECT_TEMPLATE.md) |
| 47 | Ask for review; fix reproducibility and clarity problems | Another person can follow the setup and understand the claims |
| 48 | Publish a portfolio-ready result and plan the next specialty | Capstone README, demo if safe, and a 3-month follow-up plan |

## How to adjust the plan

- **New to coding:** spend extra time on Weeks 1–6 and build small scripts before modeling.
- **Strong programmer, new to ML:** compress the Python weeks but keep the data, statistics, and evaluation work.
- **Data analyst:** focus on validation, experimentation, model limitations, and software practices; do not skip classical ML baselines.
- **Research path:** add math and paper reproduction weeks; do not rush the evidence and experiment-design steps.
- **LLM-focused:** complete the core ML and evaluation blocks, then spend more time on retrieval, security, and systems. Tool APIs change faster than fundamentals.
- **Limited compute or bandwidth:** use small datasets, CPU-friendly methods, local built-in examples, and hosted notebooks only when appropriate. You do not need an expensive GPU to learn the fundamentals.

## Monthly reflection

At the end of each four-week block, answer: What can I now explain without notes? What can I build from a blank file? What result surprised me? What failed? What is one assumption I need to check next? Use those answers to change your pace.
