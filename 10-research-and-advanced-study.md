# 10 — Research and Advanced Study

**Goal:** Ask a precise question, read prior work critically, design a fair experiment, and make results reproducible enough for others to inspect.

## Read a paper efficiently

1. Read the title, abstract, conclusion, and figures. Identify the claim and task.
2. Read the introduction for motivation and contribution; note what problem is actually being solved.
3. Inspect data, baselines, metrics, and split design before trusting headline results.
4. Study the method and implementation details. List assumptions and missing information.
5. Inspect ablations, uncertainty, failure cases, and comparison fairness.
6. Check code, data, model, and license availability. Verify whether results can be independently reproduced.
7. Write a one-page summary: question, method, evidence, limitations, and what you would test next.

Do not infer that a method is universally useful because it improves a benchmark. Benchmarks can be saturated, narrow, or poorly matched to deployment.

## Design a reliable experiment

- Write the hypothesis or question before running many trials.
- Select a baseline and comparison that are actually relevant.
- Keep train, validation, and test data separate; document all split decisions.
- Change one important factor at a time where possible; use ablations to test contributions.
- Report uncertainty, repeated-run variability, and negative results where useful.
- Avoid selecting only the best random seed or reporting only favorable metrics.
- Keep an experiment log with code/data versions, configuration, hardware, and outputs.
- Check whether a comparison uses the same data, compute budget, tuning effort, and evaluation rules.

## Advanced topics to explore

Choose according to a research question or role; these are not prerequisites for every practitioner:

- probabilistic and Bayesian modeling;
- causal inference and experimental design;
- representation learning, self-supervised learning, and transfer learning;
- optimization, generalization, and learning theory;
- uncertainty estimation and calibration;
- robust and distributionally robust ML;
- privacy-preserving methods and federated learning;
- interpretability and mechanistic analysis;
- efficient inference, quantization, distillation, and distributed training;
- reinforcement learning, sequential decision-making, and control;
- retrieval, evaluation, and safety for generative models.

## Reproduction project

Choose one paper with available code and a manageable dataset. First reproduce a baseline, then one central result. Record deviations from the paper, compute constraints, and failed attempts. Do not claim a full reproduction if key settings or data could not be matched. If the result differs, investigate rather than hiding the difference.

## Communicate clearly

A strong report includes the question, context, data and license, methods, split and metrics, results with uncertainty, error analysis, limitations, compute details, and instructions to reproduce. Separate observations from interpretations. If code or data cannot be shared, explain why and provide enough detail for an honest assessment.

## Checkpoint

A reader can identify your research question, evaluate whether the comparison supports your claim, find your methods and limitations, and understand how to reproduce or challenge the result. Use the [project template](../projects/PROJECT_TEMPLATE.md) as a starting point.

## Selected resources

- [arXiv](https://arxiv.org/) — preprints; not every paper has been peer reviewed.
- [OpenReview](https://openreview.net/) — papers and reviews for participating venues.
- [Papers with Code](https://paperswithcode.com/) — papers, tasks, and linked implementations; verify details in the original paper and repository.
- [Google Scholar](https://scholar.google.com/) or your library — find related work and later citations; citation count is not a quality guarantee.
