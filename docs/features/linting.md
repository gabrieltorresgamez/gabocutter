# Linting and Code Quality

To check the code quality, run the following command:

```bash
make check
```

This command uses [ruff](https://github.com/charliermarsh/ruff) to lint and format the code. The configuration is defined in `pyproject.toml`:

```toml
[tool.ruff]
target-version = "py39"
line-length = 120
fix = true
select = [
    "YTT",   # flake8-2020
    "S",     # flake8-bandit
    "B",     # flake8-bugbear
    "A",     # flake8-builtins
    "C4",    # flake8-comprehensions
    "T10",   # flake8-debugger
    "SIM",   # flake8-simplify
    "I",     # isort
    "C90",   # mccabe
    "E", "W",# pycodestyle
    "F",     # pyflakes
    "PGH",   # pygrep-hooks
    "UP",    # pyupgrade
    "RUF",   # ruff
    "TRY",   # tryceratops
]
ignore = [
    "E501",  # LineTooLong
    "E731",  # DoNotAssignLambda
]

[tool.ruff.format]
preview = true

[tool.ruff.per-file-ignores]
"tests/*" = ["S101"]
```