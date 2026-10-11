# 09 — Responsible, Safe, and Trustworthy AI

**Goal:** Make responsible practice part of problem definition, data work, model evaluation, deployment, and monitoring—not a final checklist after the system is built.

This module is not legal advice or a substitute for domain-specific review. Laws and obligations depend on location, sector, and use. In high-impact settings, involve qualified domain experts, affected communities, privacy/security professionals, and legal counsel as appropriate.

## Questions to ask throughout a project

### Purpose and necessity

- What problem is being addressed, for whom, and who may be harmed?
- Is ML needed, or would a simpler rule, service improvement, or human process work better?
- What uses are in scope and explicitly out of scope?
- Who can contest, correct, or appeal an output?

### Data, consent, and privacy

- Was the data collected and labeled with appropriate permission and a clear lawful basis?
- Are sensitive identifiers necessary? Can data be minimized, de-identified, access-controlled, or retained for less time?
- Could a model reveal memorized or sensitive information? Could prompts, logs, or telemetry expose data?
- Is the dataset documented, and are its license and known limitations understood?

### Quality, representation, and fairness

- Who is under-represented or missing from the data?
- Do errors or coverage differ across relevant groups or contexts?
- Is the target or historical label itself a biased proxy for the real goal?
- What fairness definition is appropriate for this use, and what trade-offs does it imply?

There is no single fairness metric that settles every question. Group metrics can be uncertain with small samples, and the right analysis depends on context, affected people, and applicable requirements.

### Transparency and human use

- Can users tell when they are interacting with AI and understand important limitations?
- Does an explanation help someone act or contest an error, or only make the system look understandable?
- Are humans trained to review outputs, and can they realistically override them?
- Does the interface encourage automation bias or over-trust?

### Security and misuse

- Can inputs manipulate the system, reveal data, or trigger unauthorized actions?
- Can an attacker poison training data or abuse an endpoint?
- Are tools and permissions limited to what is necessary?
- Is there a way to report, investigate, and respond to incidents?

### Reliability and environmental cost

- Does performance hold under realistic distribution changes and edge cases?
- What happens when the model is unavailable, uncertain, or wrong?
- Are compute use, latency, energy, and repeated training justified by the value provided?

## Practical risk review

For each project, document:

1. Intended users, affected people, and the decision or action influenced.
2. Intended and prohibited uses.
3. Data sources, permissions, retention, sensitive fields, and limitations.
4. Baselines, evaluation design, uncertainty, and error analysis by relevant context or group.
5. Known failure modes, security threats, abuse cases, and mitigations.
6. Human oversight, user communication, escalation, and appeal paths.
7. Monitoring, incident response, rollback, and conditions for suspension.

Revisit the review when data, models, users, or deployment context change.

## Checkpoint

You can explain who benefits, who bears risk, what evidence supports use, what remains uncertain, how data and security are protected, and what happens when the system fails. Add this discussion to every project README, even when the conclusion is that the model should not be deployed.

## Selected resources

- [NIST AI Risk Management Framework](https://www.nist.gov/itl/ai-risk-management-framework) — voluntary risk-management guidance.
- [Google's People + AI Guidebook](https://pair.withgoogle.com/guidebook/) — human-centered product-design questions.
- Read current local law and sector guidance for any real deployment; a general guide cannot determine legal compliance.
