This is a modern Cookiecutter template that can be used to initiate a Python project with all the necessary tools for development and testing. It supports the following features:

- [uv](https://docs.astral.sh/uv/) for dependency management
- CI/CD with [GitHub Actions](https://github.com/features/actions)
- Code quality with [ruff](https://github.com/charliermarsh/ruff)
- Testing and coverage with [pytest](https://docs.pytest.org/en/7.1.x/)
- Documentation with [MkDocs](https://www.mkdocs.org/)

---

<p align="center">
  <a href="https://gabrieltorresgamez.github.io/gabocutter/">Documentation</a> - <a href="https://github.com/gabrieltorresgamez/gabocutter-example">Example</a>
</p>

---

## Quickstart

On your local machine, navigate to the directory in which you want to
create a project directory, and run the following command:

```bash
uvx cookiecutter https://github.com/gabrieltorresgamez/gabocutter.git
```

or if you don't have `uv` installed yet:

```bash
pip install cookiecutter
cookiecutter https://github.com/gabrieltorresgamez/gabocutter.git
```

Follow the prompts to configure your project. Once completed, a new directory containing your project will be created. Then navigate into your newly created project directory and follow the instructions in the `README.md` to complete the setup of your project.

## Acknowledgements

This project is partially based on [Florian Maas's](https://github.com/fpgmaas)
[cookiecutter-uv](https://github.com/fpgmaas/cookiecutter-uv)
repository. It has been simplified and adjusted to my personal preferences.
