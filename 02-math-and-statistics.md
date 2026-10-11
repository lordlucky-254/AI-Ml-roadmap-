# 02 — Math and Statistics for ML

**Goal:** Build enough mathematical intuition to understand model behavior, choose evaluations, and recognize when assumptions are not justified. You do not need to finish every advanced topic before building your first model.

## How to study the math

For each idea, do three things: explain it in ordinary language, work a small hand-calculated example, and see what it looks like in code or a plot. Revisit topics when a later model needs them. Learn proofs when they answer a question you care about; do not mistake symbol manipulation for understanding.

## Essential first pass

### Algebra and functions

Know how to rearrange equations, read functions, work with sums and logarithms, and interpret graphs. Models are functions from inputs to outputs. Loss functions turn prediction errors into quantities an optimizer can try to reduce.

**Practice:** plot a line, a quadratic, and a sigmoid; vary one parameter at a time and describe the change.

### Linear algebra

Learn scalars, vectors, matrices, shapes, dot products, matrix multiplication, norms, and the intuition for projections. In a neural network, batches of examples and learned weights are represented with tensors.

**Practice:** compute a tiny dot product by hand, then use NumPy; verify the dimensions of a matrix multiplication before running it.

### Probability and statistics

Learn random variables, probability distributions, conditional probability, expectation, variance, sampling, correlation, confidence intervals, and the difference between association and causation. Understand that a statistic estimated from a sample has uncertainty.

**Practice:** simulate coin flips or sampling variation; compare a sample mean with the population mean; explain why correlation alone does not establish causation.

### Calculus and optimization intuition

Understand derivatives as local rates of change, partial derivatives for functions of many variables, the chain rule, and gradients. Optimization updates parameters to reduce a loss; learning rate affects the size of each update.

**Practice:** draw a one-dimensional loss curve and show how too-large and too-small steps behave. Use a finite difference to approximate a derivative.

## Intermediate topics

- **Statistical inference:** sampling design, confidence intervals, hypothesis tests, multiple comparisons, and practical versus statistical significance.
- **Regression:** least squares, residuals, assumptions, regularization, and uncertainty.
- **Information theory:** entropy, cross-entropy, KL divergence, and why log loss is useful for probabilistic predictions.
- **Numerical computing:** floating-point precision, scaling, conditioning, and stable computation.
- **Experimental design:** randomization, controls, repeated experiments, power and uncertainty where appropriate.

## Advanced topics — choose based on your goal

A research or specialized track may require proofs, multivariable calculus, matrix decompositions and eigenvalues, Bayesian inference, causal inference, convex optimization, information theory, stochastic processes, or measure-theoretic probability. Add these when your chosen method or research question calls for them.

## Use math to answer ML questions

- Why does feature scaling affect some optimization methods more than tree models?
- What does regularization do to the objective and to a model's complexity?
- Why can accuracy be misleading when a class is rare?
- What assumptions are implicit in a random train/test split?
- Why does a small test set produce an uncertain metric?
- What information is included in a confidence interval—and what is not?

## Checkpoint

Explain, without relying on jargon, what a vector, gradient, probability, sample, variance, and loss are. Hand-calculate a small mean, variance, and classification metric. Connect a gradient to a parameter update. If one of these is unclear, return to it while working through [Classical ML](04-classical-ml.md).

## Selected resources

- [Khan Academy — Statistics and probability](https://www.khanacademy.org/math/statistics-probability) — introductory practice.
- [3Blue1Brown — Essence of Linear Algebra](https://www.3blue1brown.com/topics/linear-algebra) — visual intuition.
- [StatQuest](https://statquest.org/) — clear explanations of statistics and ML ideas.
- [Introduction to Statistical Learning](https://www.statlearning.com/) — practical statistical learning text with free materials.
- [Mathematics for Machine Learning](https://mml-book.github.io/) — broader reference; use selectively.
