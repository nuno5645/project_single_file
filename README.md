# project_single_file

This repository contains a single-page movie streaming landing page that can be served as a static site.

## Running locally with Docker

```bash
# Build the Docker image
docker build -t movie-streaming-site .

# Run the container
docker run --rm -p 8080:80 movie-streaming-site
```

The site will be available at http://localhost:8080.
