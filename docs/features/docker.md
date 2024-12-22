# Containerization with Docker

A simple `Dockerfile` is included in the repository. It installs **uv**, sets up the environment, and runs `foo.py` when executed.

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