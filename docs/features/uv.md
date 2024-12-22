# Dependency Management with uv

The generated repository uses [uv](https://docs.astral.sh/uv/) for managing dependencies. When you create a repository using this template, a `uv` environment is pre-configured in `pyproject.toml`. To add your project-specific dependencies, use the following command:

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