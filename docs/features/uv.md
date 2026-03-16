# Dependency Management with uv

The generated repository uses [uv](https://docs.astral.sh/uv/) for managing dependencies and `uv_build` as the build backend. When you create a repository using this template, a `uv` environment is pre-configured in `pyproject.toml`. To add your project-specific dependencies, use the following command:

```bash
uv add <package>
```

After adding your dependencies, install the environment with:

```bash
uv sync
```

You can then run commands within your virtual environment. For example, to run tests with `pytest`, use:

```bash
uv run python -m pytest
```

## Working with code in `src`

This template uses a `src` layout. Code under your project package, for example `src/<project_slug>/...`, is installed automatically when you run `uv sync`, no manual intervention needed (independent of which IDE you use).

When you want to reuse code from somewhere else, there are three practical options:

1. Keep the vendored code in a fork of the original GitHub repository and add your fork as a dependency with `uv add ...`. This is the cleanest option, but your fork must be public or `uv` must have access to the repository, for example through SSH keys or an access token.
2. Put the code under `src/<project_slug>/vendor/...`. This is the default recommendation for this template when a small amount of refactoring is acceptable, because it keeps everything under a single root package.
3. Put the code in its own top-level package directly under `src/` if you do not want a separate Git repository and you do not want to refactor the imports. In that case, list the top-level package names in `pyproject.toml`:

```toml
[tool.uv.build-backend]
module-name = ["my_project", "copied_lib"]
```
