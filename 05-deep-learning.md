# 05 — Deep Learning

**Goal:** Understand neural-network training well enough to implement a small model, use a modern framework responsibly, and diagnose common problems. This module assumes you can write basic Python and know the ideas in [Math and Statistics](02-math-and-statistics.md) and [Classical ML](04-classical-ml.md).

## Core concepts

- **Tensors:** multidimensional arrays with shape, dtype, and device (CPU/GPU).
- **Forward pass:** map inputs through layers to produce predictions.
- **Loss:** quantify how predictions differ from targets for a training objective.
- **Automatic differentiation:** compute gradients through operations in the model.
- **Optimizer:** update parameters using gradients, for example with stochastic gradient descent or Adam.
- **Batch, epoch, and learning rate:** define how examples are grouped and how the optimization proceeds.
- **Generalization:** assess whether patterns learned on training data transfer to unseen examples.

Use a framework such as PyTorch for hands-on exercises. Learn the concepts before relying on high-level training abstractions; then use those abstractions where they improve clarity and reliability.

## A first training loop

A conceptual loop is:

1. Load a batch and move it to the correct device.
2. Compute predictions with the model.
3. Compute the loss.
4. Clear old gradients, backpropagate, and update parameters.
5. At intervals, evaluate on validation data with gradients disabled.
6. Save configuration, metrics, and a model checkpoint when appropriate.

Training and evaluation modes can behave differently for layers such as dropout and batch normalization. Validation data is for development—not a substitute for a final test set.

## Architecture sequence

1. **Multilayer perceptrons (MLPs):** useful for learning the training mechanics and simple tabular or vector examples.
2. **Convolutional neural networks (CNNs):** useful for understanding local structure in images and related data.
3. **Sequence models and attention:** learn the basic motivation for attention and transformers.
4. **Transformers and transfer learning:** use pretrained models carefully; understand the task, tokenizer or input representation, fine-tuning process, and evaluation.

These are families of tools, not universal solutions. Tree ensembles remain very competitive for many tabular problems; a neural network is not automatically better.

## Training skills

- Establish a simple baseline before making an architecture larger.
- Keep the split and metric appropriate to the task.
- Track training and validation loss/metrics over time.
- Recognize overfitting, underfitting, exploding or vanishing gradients, learning-rate problems, label errors, and data-pipeline bugs.
- Use regularization, data augmentation, early stopping, normalization, or transfer learning when justified.
- Record random seeds, framework versions, hardware, and configuration. Exact determinism is not guaranteed across hardware and software stacks.
- Be mindful of compute cost. Small datasets and pretrained models often make learning possible without a dedicated GPU.

## Practice sequence

- Train an MLP on a tiny dataset and compare it to a simple non-neural baseline.
- Deliberately overfit a tiny subset, then identify what changes when you add regularization or more data.
- Fine-tune a small pretrained image or text model using a dataset whose license permits your use.
- Plot learning curves and inspect examples that the model gets wrong.

## Checkpoint

You can explain the forward pass, loss, gradient, optimizer, batch, epoch, and validation process; reproduce a small training run; diagnose a training curve; and compare the neural model against a fair baseline. Continue to [Specializations](06-specializations.md) or [Generative AI and LLMs](07-generative-ai-and-llms.md).

## Selected resources

- [PyTorch Tutorials](https://pytorch.org/tutorials/) — current framework examples and installation guidance.
- [Dive into Deep Learning](https://d2l.ai/) — an interactive, broad deep-learning text.
- [Practical Deep Learning for Coders](https://course.fast.ai/) — a project-oriented route into deep learning.
- [Neural Networks: Zero to Hero](https://karpathy.ai/zero-to-hero.html) — implementation-oriented lectures; use as an additional path, not a prerequisite.
