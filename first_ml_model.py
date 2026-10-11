"""A small, reproducible classification example using scikit-learn.

Run from the repository root:
    python examples/first_ml_model.py

This is a teaching example on a clean built-in dataset, not a real-world
benchmark or a model approved for consequential use.
"""

from sklearn.datasets import load_iris
from sklearn.dummy import DummyClassifier
from sklearn.linear_model import LogisticRegression
from sklearn.metrics import accuracy_score, classification_report, confusion_matrix
from sklearn.model_selection import train_test_split
from sklearn.pipeline import make_pipeline
from sklearn.preprocessing import StandardScaler


def main() -> None:
    iris = load_iris()
    X_train, X_test, y_train, y_test = train_test_split(
        iris.data,
        iris.target,
        test_size=0.25,
        random_state=42,
        stratify=iris.target,
    )

    models = {
        "Majority-class baseline": DummyClassifier(strategy="most_frequent"),
        "Scaled logistic regression": make_pipeline(
            StandardScaler(),
            LogisticRegression(max_iter=1000),
        ),
    }

    for name, model in models.items():
        model.fit(X_train, y_train)
        predictions = model.predict(X_test)

        print(f"\n{name}")
        print("-" * len(name))
        print(f"Accuracy: {accuracy_score(y_test, predictions):.3f}")
        print("Per-class report:")
        print(
            classification_report(
                y_test,
                predictions,
                target_names=iris.target_names,
                digits=3,
                zero_division=0,
            )
        )
        print("Confusion matrix (rows=true, columns=predicted):")
        print(confusion_matrix(y_test, predictions))


if __name__ == "__main__":
    main()
