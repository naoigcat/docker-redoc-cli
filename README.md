# Docker Redoc CLI

[![Docker Builds](https://github.com/naoigcat/docker-redoc-cli/actions/workflows/push.yml/badge.svg)](https://github.com/naoigcat/docker-redoc-cli/actions/workflows/push.yml)

[![GitHub Stars](https://img.shields.io/github/stars/naoigcat/docker-redoc-cli.svg)](https://github.com/naoigcat/docker-redoc-cli/stargazers)
[![Docker Pulls](https://img.shields.io/docker/pulls/naoigcat/redoc-cli)](https://hub.docker.com/r/naoigcat/redoc-cli)

**Docker Image for [ReDoc](https://github.com/Rebilly/ReDoc)'s Command Line Interface**

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
