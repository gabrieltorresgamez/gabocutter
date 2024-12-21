# Tutorial

This page contains a complete tutorial on how to create your project.

## Step 1: Install uv

To start, we will need to install `uv`. The instructions to install uv can be found
[here](https://docs.astral.sh/uv/#getting-started). For MacOS or Linux;

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

## Step 2: Generate your project

On your local machine, navigate to the directory in which you want to
create a project directory, and run the following command:

```bash
uvx cookiecutter https://github.com/gabrieltorresgamez/gabocutter.git
```

For an explanation of the prompt arguments, see
[Prompt Arguments](prompt_arguments.md).

## Step 3: Set up your Github repository

Create an empty [new repository](https://github.com/new) on Github. Give
it a name that only contains alphanumeric characters and optionally `-`.
DO NOT check any boxes under the option `Initialize this repository
with`.

## Step 4: Upload your project to Github

Run the following commands, replacing `<project-name>` with the name
that you also gave the Github repository and `<github_author_handle>`
with your Github username.

```bash
cd <project_name>
git init -b main
git add .
git commit -m "Init commit"
git remote add origin git@github.com:<github_author_handle>/<project_name>.git
git push -u origin main
```

## Step 5: Set Up Your Development Environment

Initially, the CI/CD pipeline will fail for this reason:

- The project does not yet contain a `uv.lock` file

To fix that, we first install the environment with:

```bash
make install
```

This will generate the `uv.lock` file. You should commit and push this file.

## Step 6: Enable your documentation

To enable your documentation on GitHub, first navigate to `Settings > Actions > General` in your repository, and under `Workflow permissions` select `Read and write permissions`.

## Step 7: Enable your documentation ct'd

Then navigate to `Settings > Code and Automation > Pages`. 
You should see a notification saying ` Your site is ready to be published at https://<author_github_handle>.github.io/<project_name>/`.

To finalize deploying your documentation, under `Source`, select the branch `gh-pages`.

## Step 8: You're all set!

That's it! I hope this repository saved you a lot of manual configuration. If you have any improvement suggestions, feel
free to raise an issue or open a PR on Github!
