# 03 — Data Skills and Exploration

**Goal:** Turn raw data into a documented, appropriate dataset for analysis or modeling. Many ML failures start with a data or problem-definition mistake, not a poor choice of algorithm.

## Learning outcomes

You should be able to inspect tabular data, use basic SQL and pandas, visualize distributions and relationships, detect data-quality problems, document transformations, and explain how data collection may limit conclusions.

## A careful data workflow

1. **Clarify the question.** What decision, prediction, or description is needed? Who will use the result? What is the unit of analysis and prediction time?
2. **Inspect provenance.** Identify the source, date range, collection process, license, population, and known gaps. Check whether personal or sensitive data is present.
3. **Check schema and quality.** Inspect types, ranges, duplicates, missingness, impossible values, category spelling, label quality, and changes over time.
4. **Explore before modeling.** Use summaries and plots to understand distributions, class balance, relationships, outliers, and differences across relevant groups.
5. **Decide the split early.** Random splits are not always appropriate. Use time-based splits for forecasting, group-based splits when people or devices repeat, and other designs that match how the model will be used.
6. **Build transformations without leakage.** Fit learned preprocessing—such as imputation, scaling, vocabulary selection, or feature selection—on training data only, preferably inside a pipeline.
7. **Record what you did.** Keep data versions or stable identifiers where permitted, code, assumptions, and a data dictionary. Do not commit large or restricted datasets.

## Skills to practice

### Tables with pandas

Select, filter, sort, group, join, reshape, and summarize data. Understand rows versus columns, index alignment, data types, and missing values. Learn when a copy or view might matter. Use clear, chained steps rather than an opaque block of transformations.

### SQL

Practice `SELECT`, `WHERE`, `GROUP BY`, `JOIN`, aggregations, and basic window functions. SQL is a core skill for finding and assembling data before it reaches a model.

### Visualization

Use histograms and box plots for distributions, scatter plots for relationships, line charts for time, and bar charts for categories. Label axes and units; avoid misleading scales; show sample sizes when relevant.

### Data quality and fairness

Missingness may be systematic. Labels can be noisy. A dataset can under-represent a population or encode historical inequities. Compare data coverage and error rates across relevant, lawfully available groups. Do not collect or expose sensitive attributes casually.

## Practice tasks

- Select a public, appropriately licensed dataset and write a one-page data card: source, intended use, fields, known limitations, and license.
- Make a data dictionary and a small set of validation checks for types, ranges, and duplicates.
- Plot one distribution, one relationship, and one group comparison. Write down what each plot cannot tell you.
- Create a train/validation/test plan before fitting a model. Explain why the split represents the future use case.

## Common traps

- Treating missing values as zero without justification.
- Dropping inconvenient observations without investigating why they are missing.
- Joining tables in a way that duplicates rows or uses future information.
- Performing feature selection, imputation, scaling, or vocabulary building before the split.
- Treating a public dataset as unrestricted or representative just because it can be downloaded.
- Making a causal claim from a correlation or an observational dataset without a causal design.

## Checkpoint

Given a new dataset, you can explain who or what each row represents, when each feature would be known, how the labels were obtained, what the data omits, how you will split it, and what transformations will be learned from training data. Then continue to [Classical ML](04-classical-ml.md).

## Selected resources

- [pandas getting started](https://pandas.pydata.org/docs/getting_started/index.html) and [NumPy Learn](https://numpy.org/learn/).
- [SQLBolt](https://sqlbolt.com/) — interactive SQL introduction.
- [OpenML](https://www.openml.org/) and [UCI Machine Learning Repository](https://archive.ics.uci.edu/) — dataset catalogs. Check each dataset's license and documentation before use.
