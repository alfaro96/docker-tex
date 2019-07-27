![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/alfaro96/tex.svg)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/alfaro96/tex.svg)

# docker-tex

Docker image for compiling `TeX` files.

## Build

To build the image:

```
docker build -t alfaro96/tex:latest .
```

## Run

To compile the main file:

```
docker run -it -v $(pwd)/:/home/tex/workspace/ -e FILE=main --rm alfaro96/tex:latest
```

## Docker Hub

One can easily obtain the image using:

```
docker pull alfaro96/tex:latest
```
