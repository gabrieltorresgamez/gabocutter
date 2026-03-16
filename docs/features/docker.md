# Containerization with Docker

A simple `Dockerfile` is included in the repository. It installs `uv`, installs dependencies and the project with, and starts the default module with:

```Dockerfile
CMD ["uv", "run", "python", "-m", "<project_slug>.foo"]
```

If you prefer thin runnable wrappers, you can also call a script from `scripts/`:

```Dockerfile
CMD ["uv", "run", "python", "scripts/train.py"]
```

The Docker image can be built with:

```bash
docker build . -t my-docker-image
```

It can then be run in the background with:

```bash
docker run -d my-docker-image
```

Alternatively, run it in interactive mode with:

```bash
docker run --rm -it --entrypoint bash my-docker-image
```
