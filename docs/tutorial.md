## Step 1: Install `uv`

Start by installing `uv`. You can find detailed installation instructions [here](https://docs.astral.sh/uv/#getting-started). For macOS or Linux, run the following command in your terminal:

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

## Step 2: Generate Your Project

Navigate to the directory where you want to create your project and run:

```bash
uvx cookiecutter https://github.com/gabrieltorresgamez/gabocutter.git
```

Refer to the [Prompt Arguments documentation](prompt_arguments.md) for an explanation of the prompt inputs.

## Step 3: Set Up Your Development Environment

Change into your project directory and set up the development environment by running:

```bash
make install
```

This command will create a virtual environment, install all necessary dependencies, and generate a `uv.lock` file to lock dependency versions.

## Step 4: Create a GitHub Repository

Create a new, empty repository on GitHub by visiting the [New Repository page](https://github.com/new). Ensure the repository name contains only alphanumeric characters and optionally `-`. Do **not** select any options under "Initialize this repository with."

## Step 5: Configure GitHub Repository Permissions

To enable MkDocs to deploy your documentation, update your repository's workflow permissions:

1. Go to `Settings > Actions > General`.
2. Under `Workflow permissions`, select **Read and write permissions**.

## Step 6: Upload Your Project to GitHub

Replace `<project_name>` with your project’s name and `<github_author_handle>` with your GitHub username in the commands below. Then run:

```bash
cd <project_name>
git init -b main
git add .
git commit -m "Initial commit"
git remote add origin git@github.com:<github_author_handle>/<project_name>.git
git push -u origin main
```

## Step 7: Enable Documentation Deployment

Once your project is uploaded, GitHub will automatically deploy your documentation to the `gh-pages` branch.

To publish it on GitHub Pages:

1. Go to `Settings > Pages`.
2. Under **Source**, select the branch `gh-pages`.

Next, navigate to `Settings > Code and Automation > Pages`. Finalize the setup by:

1. Selecting **Deploy from a branch** under **Source**.
2. Choosing the `gh-pages` branch and root folder `/`.
3. Saving your changes.

Your documentation will now be live.

## All Done!

Your project setup is complete! If this tutorial saved you time or you have ideas for improvement, feel free to raise an issue or open a PR on GitHub.