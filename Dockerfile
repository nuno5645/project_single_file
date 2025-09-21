# syntax=docker/dockerfile:1
FROM nginx:1.27-alpine

# Copy static site content into Nginx's default html directory
COPY movie_streaming.html /usr/share/nginx/html/index.html

# Simple healthcheck to ensure Nginx is serving the page
HEALTHCHECK CMD wget -q --spider http://localhost/ || exit 1

# Expose the port that Nginx listens on by default
EXPOSE 80

# Use the default Nginx entrypoint and command
