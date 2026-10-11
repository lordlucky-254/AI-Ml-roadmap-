# 06 — Choose a Specialization

**Goal:** Go beyond general ML and learn the methods, data, evaluation, and failure modes of one problem area. Complete the fundamentals first, then choose one path based on a question or domain you care about.

| Path | Helpful foundation | Topics to learn | First substantial project |
|---|---|---|---|
| **Natural language processing (NLP)** | Python, classical ML, basic deep learning | Text cleaning, tokenization, embeddings, sequence models, transformers, language-model evaluation | Compare a simple text classifier with a pretrained model; inspect errors across categories |
| **Computer vision (CV)** | Python, data skills, deep-learning basics | Image transforms, CNNs, transfer learning, object detection or segmentation, vision transformers, dataset shift | Fine-tune an image model and evaluate on a realistic held-out source or condition |
| **Time series and forecasting** | Statistics, regression, data handling | Temporal splits, seasonal baselines, lagged features, backtesting, uncertainty, covariates and leakage | Compare a seasonal-naive forecast with one or more models using rolling-origin evaluation |
| **Recommendation and ranking** | Classical ML, retrieval, probability | User/item representations, implicit feedback, ranking, candidate retrieval, cold start, offline/online metrics | Build a small recommender and compare top-k relevance with a popularity baseline |
| **Causal inference** | Probability, statistics, domain knowledge | Causal graphs, confounding, randomized experiments, quasi-experiments, estimands, assumptions, sensitivity | Analyze a carefully scoped observational or experimental question and state the assumptions explicitly |
| **Reinforcement learning (RL)** | Python, probability, optimization, deep-learning basics | States, actions, rewards, policies, value functions, exploration, temporal difference learning, evaluation across seeds | Train an agent in a small simulated environment and compare to a simple policy |
| **Graph ML** | Linear algebra, ML basics, graph data | Nodes/edges, graph features, message passing, graph neural networks, leakage and split design | Predict a graph property with a non-neural baseline and one graph-based model |
| **Anomaly detection** | Data exploration, statistics, domain expertise | Rare-event evaluation, one-class methods, reconstruction, thresholds, changing data distributions | Compare rule-based and ML alerts, focusing on false-alert burden and missed events |

These project ideas are educational. They do not imply that the model is appropriate for a consequential real-world decision.

## How to choose

Ask: What kind of data do I want to work with? What kinds of errors matter? What domain knowledge can I bring? What data is legally and ethically available? What can I evaluate credibly? Choose a path for one project cycle, not forever.

## Suggested learning sequence for any specialty

1. Define the task and intended use in domain terms.
2. Read one introductory text or course and the official tools documentation.
3. Find a simple baseline and an evaluation design that reflects deployment.
4. Reproduce a small method before modifying it.
5. Inspect failure cases and limitations; check dataset documentation and licenses.
6. Write a report that a domain expert can review.

## Advanced practice

Once you have one complete project, compare multiple approaches, investigate a specific failure mode, and reproduce a published result. When a new framework or architecture appears, ask what task it solves, what baseline it beats, what evaluation supports that claim, and what additional costs or risks it introduces.

Continue to [Research and Advanced Study](10-research-and-advanced-study.md) for a systematic approach to papers and experiments.
