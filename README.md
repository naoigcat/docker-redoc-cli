# Docker Redoc CLI

**Docker Image for [ReDoc](https://github.com/Rebilly/ReDoc)'s Command Line Interface**

-   [dockerhub](https://hub.docker.com/r/naoigcat/redoc-cli)
-   [github](https://github.com/naoigcat/docker-redoc-cli)

## Installation

```sh
docker pull naoigcat/redoc-cli
```

## Usage

See [redoc-cli](https://github.com/Redocly/redoc/blob/master/cli/README.md#usage) for available commands.

It is recommended to create an alias:

```sh
alias redoc-cli="docker run --rm -v \"$PWD\":/app naoigcat/redoc-cli"
```
