# 00 — Getting Started

**Goal:** Understand the learning path, set up a place to practice, and complete a first small programming exercise.

## What do AI, ML, and deep learning mean?

- **Artificial intelligence (AI)** is a broad name for systems designed to perform tasks associated with intelligent behavior. It includes many approaches, not only machine learning.
- **Machine learning (ML)** is a family of methods that learn patterns from data to make predictions, rank options, generate outputs, or support decisions.
- **Deep learning (DL)** is a family of ML methods based on neural networks with multiple layers.
- **Generative AI** describes systems that generate content such as text, images, audio, video, or code. Many current generative systems use deep learning, but generative AI is not the whole of AI.

A model is not magic: it is a component trained or configured for a task. Its behavior depends on data, objectives, implementation, and context of use.

## Pick a starting level

Use the [roadmap](../ROADMAP.md) rather than comparing yourself to other learners. If you have never coded, start with Python. If you can already write small programs, try the diagnostic below and skip only what you can comfortably explain and demonstrate.

### Quick self-check

Can you do each of these without following a step-by-step tutorial?

- [ ] Write a Python function that accepts input and returns a result.
- [ ] Read a CSV file and inspect rows, columns, missing values, and types.
- [ ] Explain the difference between training data and test data.
- [ ] Describe why a majority-class predictor can be a useful baseline.
- [ ] Explain, in simple terms, what a false positive and false negative mean.
- [ ] Save a script, run it again, and explain what changed when you edit it.

Start with the earliest unchecked topic. This is a guide, not an entrance exam.

## Set up your practice environment

You need a recent supported Python 3 release, a text editor, and Git. You can use a local computer or an approved hosted notebook. A terminal is useful; Jupyter notebooks are optional.

A simple local setup from the repository root is:

```bash
python -m venv .venv
# macOS/Linux
source .venv/bin/activate
# Windows PowerShell: .venv\Scripts\Activate.ps1
python -m pip install --upgrade pip
python -m pip install numpy pandas matplotlib scikit-learn jupyterlab
```

If activation is blocked by system policy or installation is difficult, use a trusted hosted notebook environment and keep a local copy of your work. Install PyTorch or another deep-learning framework later, using that framework's current official installation instructions; hardware and operating-system requirements vary.

Try the example in [`examples/first_ml_model.py`](../examples/first_ml_model.py). It uses a small built-in dataset and does not download data. For environment questions, see [Python and Software Skills](01-python-and-software.md).

## A good beginner learning loop

1. **Read a small section.** Define unfamiliar terms in your own words.
2. **Run the example.** Predict what it will do before running it.
3. **Change one thing.** Change an input, parameter, or assumption and observe the effect.
4. **Write down the result.** Include an error you encountered and how you fixed it.
5. **Explain it aloud or in writing.** If you cannot explain a result, revisit it before adding complexity.

## Safety and good habits from day one

- Never commit API keys, passwords, private data, or confidential files.
- Check the license and permitted use of data, images, code, and models before using or redistributing them.
- Do not use personal or sensitive data in online tools unless you have authorization and understand their data handling terms.
- Keep a simple record of where a dataset came from and what transformations you applied.

## Checkpoint

You are ready for the next module when you can explain the difference between AI, ML, and deep learning, run and edit a Python script, and describe one question you would like to answer with data. Continue to [Python and Software Skills](01-python-and-software.md), or jump to [Math and Statistics](02-math-and-statistics.md) if you already program.
