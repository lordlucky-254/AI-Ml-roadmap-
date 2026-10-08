# Intermediate Stage

Goal: become fluent in classical ML, then build and train neural networks with a real framework.

## Module 4 — Classical ML Deep Dive (4–6 weeks)

- Tree ensembles: Random Forest, Gradient Boosting (XGBoost/LightGBM)
- Regularization: ridge, lasso, elastic net
- Feature engineering & selection
- Cross-validation (k-fold) and proper evaluation: precision/recall, ROC/AUC, confusion matrices
- Bias–variance tradeoff and overfitting diagnosis

**Project:** Build a tabular competition-grade pipeline (e.g. Kaggle "Titanic" or "Spaceship Titanic") reaching the top ~20%: feature engineering + CV + tuned gradient boosting.

## Module 5 — Deep Learning Foundations (4–5 weeks)

- Neural network basics: layers, activations (ReLU, softmax), loss functions, backprop
- Build a small net from scratch with NumPy, then with PyTorch
- Training loop: optimizers (SGD, Adam), learning rates, batch size, epochs
- Overfitting in NNs: dropout, weight decay, data augmentation
- PyTorch fundamentals: `nn.Module`, `Dataset`/`DataLoader`, `tensor.cuda()`

**Project:** MNIST / Fashion-MNIST classifier reaching >99%: compare architectures, log experiments.

## Module 6 — CNNs & Computer Vision (2–3 weeks)

- Conv layers, pooling, classic architectures (VGG, ResNet)
- Transfer learning / fine-tuning a pretrained model
- Image augmentation

**Project:** Fine-tune a pretrained ResNet on a small custom image dataset; track accuracy before/after fine-tuning; ship an inference notebook.

## Module 7 — NLP & Sequential Models (3 weeks)

- Text preprocessing, embeddings (word2vec → pretrained transformer embeddings)
- RNN/LSTM intuition (you rarely build them, but you must understand them)
- Transformer architecture at a conceptual level (attention in one paragraph)

**Project:** Sentiment classification or named-entity extraction with a small transformer; compare to a classical TF-IDF baseline.

## Finish line

- You can run a full supervised ML pipeline end-to-end with proper validation
- You can train, evaluate, and debug a PyTorch model
- You understand why transfer learning beats training from scratch
- Move on to [Advanced](advanced.md)