![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/alfaro96/tex)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/alfaro96/tex)
![Docker Pulls](https://img.shields.io/docker/pulls/alfaro96/tex)
![Docker Image Size](https://img.shields.io/docker/image-size/alfaro96/tex/latest)

# Using LaTeX via Docker

This directory contains a Dockerfile to make it easy to get up and running with LaTeX via [Docker](https://docker.com).

## Installing Docker

General installation instructions are [on the Docker site](https://docs.docker.com/get-docker/), but we give some quick links here:

* [Installing Docker Engine](https://docs.docker.com/engine/install/)

## Building the image

We are using a Makefile to simplify Docker commands within `make` commands.

To build the image from the Dockerfile:

```
make build
```

## Pulling the image

To pull the image from [Docker Hub](https://hub.docker.com):

```
make pull
```

## Running the container

To compile the `main` file:

```
make run FILE=main
```


