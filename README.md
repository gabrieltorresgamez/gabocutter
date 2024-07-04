# gabocutter
My heavily opinionated cookiecutter template.

## Instructions

1. Clone the repo or create a new one using this template. 📂
2. Rename all instances of `gabocutter` to your project name. ✏️
3. Adjust the `pyproject.toml` build file to your liking. 🛠️
4. Customize or remove Docker-related files if they're not necessary:
   - `.github/workflows/docker-test.yml` 🐳
   - `Dockerfile` 🐳
   - `compose.yml` 🐳
5. Modify the Makefile to your liking. 📝
6. Start working on your project. ☕️
7. OPTIONAL: Set up a Sphinx project for code documentation. 📚
 
## Structure

    ├── .github/workflows  <- Github actions workflows.
    ├── data
    │   ├── processed      <- The final, canonical data sets for modeling.
    │   └── raw            <- The original, immutable data dump.
    │
    ├── docs               <- Documentation for the project.
    ├── models             <- Modelcheckpoints, model predictions, metrics, and model summaries.
    ├── notebooks          <- Jupyter notebooks or Quarto Markdown Notebooks. 
    │                         Naming convention is a number (for ordering) and a short `-` 
    │                         delimited description, e.g. `00-example.qmd`.
    │
    ├── references         <- Data dictionaries, manuals, and all other explanatory materials.    
    ├── reports            <- Generated analysis as HTML, PDF, LaTeX, etc.
    ├── src/gabocutter     <- Source code package for use in this project.
    ├── tests              <- Unit tests for the project.
    ├── .gitignore         <- Files to be ignored by git.
    ├── compose.yml        <- Docker compose file for running the image
    ├── Dockerfile         <- Dockerfile for the Docker image.
    ├── LICENSE            <- MIT License.
    ├── Makefile           <- Makefile with commands like `make install` or `make test`.
    ├── pyproject.toml     <- Package build configuration.
    └── README.md          <- The top-level README for this project.
