# Prompt Arguments

When running the `cookiecutter` command, a prompt will appear to help you configure your repository. Below are the prompt values and their explanations:

---

**author**  
Your full name.

**email**  
Your email address.

**author_github_handle**  
Your GitHub handle, e.g., `<handle>` in `https://github.com/<handle>`.

**project_name**  
The name of your project. This should match the name of your repository and contain only alphanumeric characters and hyphens (`-`).

**project_slug**  
The project slug, which defaults to the `project_name` with all hyphens (`-`) replaced by underscores (`_`). This is how you will import your code later, for example:

```python
from <project_slug> import foo
```

**project_description**  
A brief description of your project.