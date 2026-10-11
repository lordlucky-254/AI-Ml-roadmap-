# Examples

## First ML model

[`first_ml_model.py`](first_ml_model.py) trains a dummy classifier and a logistic-regression pipeline on scikit-learn's built-in Iris dataset, then reports held-out metrics. The dataset is included with scikit-learn, so the example does not fetch files from the internet.

From the repository root, install scikit-learn if needed and run:

```bash
python -m pip install scikit-learn
python examples/first_ml_model.py
```

The point is the workflow: make a split first, compare with a trivial baseline, fit scaling inside a pipeline, and evaluate on held-out data. Iris is a clean teaching dataset; this example does **not** demonstrate how to build or validate a consequential production system.
