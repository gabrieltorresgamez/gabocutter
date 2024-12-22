# Documentation with MkDocs

To view the documentation locally, run the following command:

```bash
make docs
```

This will generate and build your documentation, and start a local server at [http://localhost:8000](http://localhost:8000) where you can access it.

## Documenting Docstrings

The generated project automatically converts your docstrings into well-structured documentation. By default, it uses the [Google](https://google.github.io/styleguide/pyguide.html) style for docstrings.

Here’s an example of a Google-style docstring:

```python
def function_with_pep484_type_annotations(param1: int, param2: str) -> bool:
    """Example function with PEP 484 type annotations.

    Args:
        param1: The first parameter.
        param2: The second parameter.

    Returns:
        bool: True for success, False otherwise.
    """
```

For more examples, check out the [Napoleon documentation](https://sphinxcontrib-napoleon.readthedocs.io/en/latest/example_google.html).