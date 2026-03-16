# {{cookiecutter.project_name}}

[![Build status](https://img.shields.io/github/actions/workflow/status/{{cookiecutter.author_github_handle}}/{{cookiecutter.project_name}}/main.yml?branch=main)](https://github.com/{{cookiecutter.author_github_handle}}/{{cookiecutter.project_name}}/actions/workflows/main.yml?query=branch%3Amain)
[![Commit activity](https://img.shields.io/github/commit-activity/m/{{cookiecutter.author_github_handle}}/{{cookiecutter.project_name}})](https://img.shields.io/github/commit-activity/m/{{cookiecutter.author_github_handle}}/{{cookiecutter.project_name}})
[![License](https://img.shields.io/github/license/{{cookiecutter.author_github_handle}}/{{cookiecutter.project_name}})](https://img.shields.io/github/license/{{cookiecutter.author_github_handle}}/{{cookiecutter.project_name}})

{{cookiecutter.project_description}}

## Resources

- 🚀 [Repository](https://github.com/{{cookiecutter.author_github_handle}}/{{cookiecutter.project_name}}/)
- 📖 [Documentation](https://{{cookiecutter.author_github_handle}}.github.io/{{cookiecutter.project_name}}/)

## Getting started with your project

Follow the instructions under https://gabrieltorresgamez.github.io/gabocutter/tutorial/ to get started.

## Working with code in `src`

Keep your importable project code under `src/{{cookiecutter.project_slug}}`. New subpackages under that directory are automatically installed into the virtual environment when you run `uv sync`, so you do not need to update `pyproject.toml` every time you add internal modules.

When you want to reuse code from somewhere else, there are three practical options:

1. Keep the vendored code in a fork of the original GitHub repository and add your fork as a dependency with `uv add ...`. This is the cleanest option if you want to keep the code separate, but your fork must be public or `uv` must have access to the repository, for example through SSH keys or an access token.
2. Put the code under `src/{{cookiecutter.project_slug}}/vendor/...`. This is the default recommendation for this template when a small amount of refactoring is acceptable, because it keeps everything under a single root package.
3. Put the code in its own top-level package directly under `src/` if you do not want a separate Git repository and you do not want to refactor the imports. In that case, list the top-level package names in `pyproject.toml`:

```toml
[tool.uv.build-backend]
module-name = ["{{cookiecutter.project_slug}}", "copied_lib"]
```

## Structure

    ├── .github
    │   ├── actions        <- Github Actions configuration.
    │   └── workflows      <- Github Actions workflows.
    │   
    ├── src
    │   └── {{cookiecutter.project_slug}} <- Source code for use in this project.
    │       └── vendor     <- Optional vendored code. Use this only if you copy code
    │                         into the repository and can refactor imports to
    │                         `{{cookiecutter.project_slug}}.vendor.imported_lib`
    ├── data
    │   ├── processed      <- The final, canonical data sets for modeling.
    │   └── raw            <- The original, immutable data dump.
    │
    ├── docs               <- MkDocs documentation for the project.
    ├── models             <- Modelcheckpoints, model predictions, metrics, and model summaries.
    ├── notebooks          <- Jupyter notebooks or Quarto Markdown Notebooks. 
    │                         Naming convention is a number (for ordering) and a short `-` 
    │                         delimited description, e.g. `00-example.qmd`.
    ├── references         <- Data dictionaries, manuals, and all other explanatory materials.    
    ├── reports            <- Generated analysis as HTML, PDF, LaTeX, etc.
    ├── tests              <- Unit tests for the project.
    ├── .gitignore         <- Files to be ignored by git.
    ├── Dockerfile         <- Dockerfile for the Docker image.
    ├── LICENSE            <- MIT License.
    ├── Makefile           <- Makefile with commands like `make install` or `make test`.
    ├── mkdocs.yml         <- MkDocs configuration.
    ├── pyproject.toml     <- Package build configuration.
    ├── README.md          <- The top-level README for this project.
    └── uv.lock            <- Lock file for uv.
