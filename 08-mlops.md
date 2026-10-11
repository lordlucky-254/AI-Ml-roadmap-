# 08 — MLOps and Deployment

**Goal:** Turn a model experiment into a system that can be reproduced, tested, served, monitored, and safely changed. A notebook score alone is not a deployed ML product.

## The production lifecycle

1. **Package:** separate data processing, model logic, configuration, and interface. Pin or record dependencies.
2. **Test:** check data schemas, transformations, model behavior, API contracts, and failure paths. Include tests for unusual or invalid inputs.
3. **Track:** record code version, data version or identifier, parameters, environment, artifacts, and metrics. Do not log secrets or personal data.
4. **Serve:** choose batch prediction, a scheduled job, or an online API based on the actual need. Keep latency, throughput, availability, and cost requirements explicit.
5. **Deploy safely:** use staged releases, a rollback plan, authorization, rate limits, and human review when the consequences warrant it.
6. **Monitor:** track service health, data quality, input and output distributions, model performance when labels arrive, latency, cost, and user feedback.
7. **Maintain:** investigate drift or incidents, retrain only with a validated process, compare a candidate to the current system, and retain the ability to roll back.

## Skills to learn

- Reproducible environments and dependency management.
- Data and model versioning; experiment tracking.
- Unit, integration, and data validation tests.
- Packaging a prediction pipeline and exposing it through a simple API or batch job.
- Containers and continuous integration at a conceptual and practical level.
- Model registry and deployment patterns when a project requires them.
- Logging and monitoring without exposing sensitive data.
- Security basics: secrets management, least privilege, dependency updates, and input validation.

Tools such as MLflow, containers, or a cloud platform can be useful, but learn the underlying problem before adopting another tool. Start small; a well-tested scheduled batch job may be better than an elaborate online platform.

## Monitoring is more than watching a score

A model may degrade because of data drift, concept drift, upstream schema changes, user behavior changes, or failures in the surrounding product. Monitor service-level indicators and data quality first. Performance monitoring may need delayed or sampled labels and careful privacy controls. Distribution shift is a warning signal, not proof that accuracy has changed.

## Practice project

Take a completed classical-ML or LLM project and:

- create a clean setup/readme so someone else can reproduce it;
- add tests for preprocessing, predictions, and invalid inputs;
- expose batch predictions or a small API;
- log version and operational metrics without leaking raw sensitive content;
- document deployment assumptions, monitoring, rollback, and retraining triggers.

## Checkpoint

A second person can reproduce the experiment; tests catch a deliberate schema or behavior change; the interface handles bad inputs safely; versions are traceable; and the project explains monitoring and rollback. Continue to [Responsible AI](09-responsible-ai.md).

## Selected resources

- [Made With ML](https://madewithml.com/) — practical material spanning data, modeling, and deployment.
- [Full Stack Deep Learning](https://fullstackdeeplearning.com/) — end-to-end ML system topics.
- [MLflow documentation](https://mlflow.org/docs/latest/) — experiment tracking and model lifecycle tooling.
