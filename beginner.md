# Beginner Stage

Goal: write Python you understand, learn the math that ML is built on, and build a first end-to-end model.

## Module 0 — Python Fundamentals (3–4 weeks)

- Syntax: variables, types, loops, conditionals, functions
- Data structures: lists, dicts, sets, tuples
- File I/O and exceptions
- Virtual environments: `uv` or `conda`, reproducible installs
- Git basics: `init`, `add`, `commit`, `push`

**Project:** A CLI tool (e.g. a password checker, expense tracker) published to GitHub.

## Module 1 — Essential Math for ML (2–3 weeks)

- Linear algebra: vectors, matrices, matrix multiplication, dot product
- Calculus: derivatives, chain rule, gradients (conceptual + manual practice)
- Probability & statistics: distributions, mean/variance/stddev, Bayes' rule

> Work through the math *by hand* with NumPy as a calculator. You don't need a math degree — you need working intuition.

**Project:** Implement a small linear regression from scratch using numpy (gradient descent, no sklearn).

## Module 2 — NumPy & pandas (1–2 weeks)

- NumPy: arrays, broadcasting, vectorized ops
- pandas: Series, DataFrame, filtering, groupby, joins
- Jupyter notebooks / JupyterLab workflow

**Project:** Clean a messy CSV dataset (missing values, types, duplicates) and produce summary stats.

## Module 3 — First ML Models (2–3 weeks)

- ML vocabulary: features, labels, train/test split, overfitting, metrics
- Linear regression and logistic regression (with `scikit-learn`)
- k-Nearest Neighbors and a simple decision tree
- Train/test split discipline — never tune on test data

**Project:** Predict house prices (Kaggle "House Prices") with a tuned linear model; evaluate with RMSE. Share the notebook and write-up.

## Finish line

- You can write Python without looking everything up
- You can explain gradient descent in one paragraph
- You have 3+ public repos/notebooks
- Move on to [Intermediate](intermediate.md)