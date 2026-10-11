# 01 — Python and Software Skills

**Goal:** Write small programs you can understand, rerun, test, and explain. Python is the common language in this guide, but the habits transfer to other languages.

## Learning outcomes

By the end, you should be able to:

- use variables, strings, numbers, booleans, conditionals, loops, and functions;
- choose among lists, dictionaries, sets, and tuples;
- read and write text and CSV files safely;
- break a task into functions and modules;
- read tracebacks, debug one problem at a time, and write simple tests;
- use a virtual environment, install packages, and run Git commands;
- use NumPy arrays without confusing them with ordinary Python lists.

## Suggested sequence

### 1. Core Python

Learn expressions, variables, types, conditionals, loops, functions, parameters, return values, and basic error handling. Practice writing small functions rather than building one long script.

**Practice:** temperature conversion; count word frequencies in a paragraph; validate a list of values; write a function that calculates a metric from actual labels and predictions.

### 2. Data structures and files

Use lists for ordered collections, dictionaries for key/value lookup, sets for unique items, and tuples for fixed groupings. Read CSV/JSON files and handle missing or malformed input deliberately.

**Practice:** load a small CSV, count category frequencies, and write a cleaned copy to a new file without overwriting the original.

### 3. Functions, modules, errors, and tests

Give functions one clear job. Use descriptive names, docstrings when helpful, and exceptions to report invalid input. Learn to import modules and write a few tests with Python's built-in `unittest` or a test framework such as `pytest`.

**Practice:** test a function on normal, boundary, and invalid inputs. Make a tiny command-line script accept a filename and produce a summary.

### 4. Tools you will use throughout

- **Terminal:** move between folders, run scripts, and inspect files.
- **Virtual environments:** isolate packages for one project; do not install every dependency globally.
- **Git:** learn `status`, `add`, `commit`, `log`, and branches. Commit small meaningful changes.
- **Jupyter:** useful for exploration; move reusable logic into functions or scripts as a project grows.
- **NumPy:** arrays, shapes, indexing, vectorized operations, and basic random-number generation.

### 5. Code quality habits

Write code another person can read. Keep data paths configurable, set random seeds where appropriate, avoid hidden notebook state, and separate data loading, transformation, training, and evaluation. Add a short README to each project.

## Short practice sequence

1. Build a command-line unit converter.
2. Read a small CSV and report row count, column names, missing values, and basic summaries.
3. Write a function for accuracy and verify it against hand-calculated examples.
4. Turn a notebook cell you reuse into a function in a `.py` file.
5. Make a Git commit after each small, working improvement.

## Common beginner traps

- Copying code without predicting what it will do.
- Treating a notebook as a linear script while relying on stale variables from old cells.
- Putting every step into one huge function or one huge notebook.
- Catching every exception and silently hiding the error.
- Installing packages into the wrong Python environment.
- Assuming a random seed makes every GPU operation perfectly deterministic.

## Checkpoint

Create a small project with a README, a script or notebook, and at least three tests. A new learner should be able to follow your instructions and get the same basic output. Continue to [Math and Statistics](02-math-and-statistics.md) and [Data Skills](03-data-skills.md).

## Selected resources

- [The Python Tutorial](https://docs.python.org/3/tutorial/) — language reference and tutorial.
- [CS50's Introduction to Programming with Python](https://cs50.harvard.edu/python/) — structured beginner course.
- [Git documentation](https://git-scm.com/doc) — version-control reference.
- [NumPy Learn](https://numpy.org/learn/) — arrays and scientific Python resources.
