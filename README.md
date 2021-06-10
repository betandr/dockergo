# Docker Go

A simple Go app using Docker multi-stage builds which uses a Docker `golang:1.16` image containing the Go tooling, builds the distributable  binary and creates a Docker image based on `alpine:latest` with that Go binary only and no Go tooling.

## Building
```
docker build -t dockergo .
```

## Running
```
docker run -d -p 8080:8080 dockergo
```

## API
```
HTTP/GET localhost:8080
```