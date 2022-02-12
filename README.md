# nimbuild - a Docker container for easy Nim compilation

## Description

The [chvancooten/nimbuild](https://hub.docker.com/r/chvancooten/nimbuild) Docker image is a convenience container used to compile Nim binaries generated by my tools (Nimpackt and NimPlant). Using Docker is easy and avoids dependency issues, as all required dependencies are pre-installed in this container.

The image is largely based on the [nimlang/nim](https://hub.docker.com/r/nimlang/nim/) image, with the addition of several Python and Nim dependencies.

## Usage

To use nimbuild, install Docker for your OS and ensure any required input files are present in the current folder. Then, start the compilation in a container as follows.

```bash
docker run --rm -v `pwd`:/usr/src/np -w /usr/src/np chvancooten/nimbuild python3 NimPackt.py -h
```