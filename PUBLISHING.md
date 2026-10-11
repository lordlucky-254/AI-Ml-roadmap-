# Publish this guide on GitHub

This workspace can prepare repository files, but it cannot create a remote repository under your GitHub account. To publish the folder yourself:

1. Sign in to GitHub and create a new repository named `ai-ml-study-guide`. Choose **Public** or **Private**. For a clean first push, leave “Add a README,” license, and `.gitignore` unchecked; this folder already contains them.
2. Download/extract this folder, open a terminal in `ai-ml-study-guide`, and run:

```bash
git init
git add .
git commit -m "Add AI and ML study guide"
git branch -M main
git remote add origin https://github.com/YOUR-USERNAME/ai-ml-study-guide.git
git push -u origin main
```

Replace `YOUR-USERNAME` with your GitHub username or organization. GitHub will ask you to authenticate using its supported sign-in flow; do not put a password or access token in the remote URL or commit it to the repository.

If you already initialized this folder as a Git repository, skip `git init`. If you created the remote with starter files, follow GitHub's instructions for reconciling the histories or recreate an empty remote before pushing.

## Before publishing

- Check that the repository visibility is what you intend.
- Do not add personal datasets, API keys, passwords, private notebooks, or confidential information.
- Review the license and attribution for any material you contribute.
- You can edit the title, add your own study notes, or fork the guide; see [CONTRIBUTING.md](CONTRIBUTING.md).
