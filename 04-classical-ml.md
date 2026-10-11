# 04 — Classical Machine Learning

**Goal:** Build a reliable end-to-end predictive experiment before reaching for complex models.

## The ML workflow

### 1. Frame the task

Specify the input available at prediction time, the target, who or what receives the prediction, the decision it may influence, and the cost of different errors. Confirm that the target is measurable and the intended use is appropriate.

### 2. Choose a split that reflects use

Keep a final test set aside. Use random stratified splits only when examples are reasonably independent and exchangeable. Prefer group splits when the same person, patient, device, or entity appears more than once. Prefer chronological splits for time-dependent prediction. Never let future information appear in a feature used to predict the past.

### 3. Establish a baseline

A baseline may be a majority-class predictor, a simple rule, a mean/median predictor, or a basic linear model. It checks whether a more complex method adds meaningful value. Record the baseline before trying many models.

### 4. Train a simple model and a pipeline

Start with linear/logistic regression, a small decision tree, or a nearest-neighbor method. Use a preprocessing pipeline so learned transformations are fit within each training fold. Then compare tree ensembles such as random forests or gradient boosting when appropriate.

### 5. Evaluate beyond one score

Choose metrics before tuning. Inspect class-specific performance, calibration where probabilities matter, errors by relevant subgroups, and examples of false positives and false negatives. Explain what the metric means to the user of the system.

### 6. Tune without test-set leakage

Use a validation set or cross-validation for model selection. Search a small, motivated range of hyperparameters. Use the final test set sparingly for the final estimate; if you repeatedly adjust the system based on test outcomes, that set has become part of development.

## Metrics: match them to the task

| Task | Useful metrics | Questions to ask |
|---|---|---|
| Regression | MAE, RMSE, median absolute error, R² | Are large errors especially costly? Are errors different across ranges or groups? |
| Classification | Precision, recall, F1, ROC-AUC, PR-AUC, log loss | Which error is more costly? Is the class rare? Are probabilities well calibrated? |
| Ranking / retrieval | Precision@k, recall@k, NDCG, MRR | Do relevant items appear near the top? Are offline labels trustworthy? |
| Forecasting | MAE/RMSE, MASE or domain-specific measures | Does evaluation preserve time order? Is there a seasonal-naive baseline? |

Accuracy can hide failure on rare classes. ROC-AUC does not by itself choose a decision threshold or show calibration. A metric never replaces analysis of the actual errors and context.

## Core topics

- Regression and classification; linear and logistic models.
- Decision trees, random forests, and gradient-boosted trees.
- Preprocessing, missing data, categorical variables, feature construction, and pipelines.
- Generalization, overfitting, underfitting, regularization, and bias/variance intuition.
- Cross-validation, hyperparameter search, class imbalance, threshold selection, and calibration.
- Clustering and dimensionality reduction as exploratory tools—not automatic discovery of “true” groups.
- Interpretability and feature importance, including their limitations.

## Practice experiment

1. Choose a small dataset with a clear license and a prediction question.
2. Define the target, use case, prediction time, and split strategy.
3. Record a simple baseline and one meaningful metric.
4. Fit a pipeline with a simple model, then compare one stronger model.
5. Inspect errors and subgroup performance where appropriate.
6. Write a short report with limitations and instructions to rerun the experiment.

The runnable [first ML example](../examples/first_ml_model.py) uses a built-in Iris dataset and illustrates a dummy baseline, held-out test set, scaling inside a pipeline, and classification metrics. It is a teaching example—not a real-world benchmark.

## Common failure modes

- Choosing a metric after seeing which model wins.
- Splitting after preprocessing or feature selection.
- Letting the same person, time period, or near-duplicate example leak across splits.
- Reporting only the best random seed or best cross-validation fold.
- Treating feature importance as causal explanation.
- Ignoring the cost of errors or the people affected by model outputs.

## Checkpoint

You can explain your split, baseline, metric, pipeline, model-selection process, errors, and limitations to another person. You can rerun the result from a clean environment. Continue to [Deep Learning](05-deep-learning.md) or build a project from the [project ladder](../projects/README.md).

## Selected resources

- [scikit-learn User Guide](https://scikit-learn.org/stable/user_guide.html) — estimators, pipelines, model selection, and evaluation.
- [Google Machine Learning Crash Course](https://developers.google.com/machine-learning/crash-course) — guided concepts and exercises.
- [Introduction to Statistical Learning](https://www.statlearning.com/) — classical methods with accessible explanations and free online materials.
