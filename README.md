# drawio-xml-svg

Dockerized version of [Draw.io Desktop](https://github.com/jgraph/drawio-desktop), enabling command-line operations for creating, checking, or exporting diagrams in environments using a graphical user interface (GUI), such as Continuous Integration (CI) tools.

## What It Does

The Draw.io Desktop application typically requires a GUI environment to operate. However, there are use cases, like automation in CI/CD pipelines, where a GUI is not available. This Docker image encapsulates the Draw.io Desktop application, allowing it to run a command-line client for diagram operations.

## Running

To use this Docker image, you can pull it from Docker Hub and run it with the following command:

    docker run -it -v $(pwd):/data meirarc/drawio-desktop -x -f svg -o /data/output.svg /data/input.drawio

This command mounts the current directory to /data inside the container, then runs the Draw.io Desktop application to convert an input Draw.io diagram file (input.drawio) to an SVG file (output.svg).

For test purpose, you can run the command below: 

    make run

## Building

If you wish to build the Docker image yourself, clone the repository and use the provided Makefile:

    git clone https://github.com/meirarc/drawio-desktop-headless.git
    cd drawio-desktop-headless
    make build

## Push 
If you wish to push a new version of the Dockerfile, run the folowing command:

    make push

## Updating Draw.io Desktop Version
To update the version of Draw.io Desktop used in the Docker image, you can use the autoupdate-drawio-desktop target in the Makefile:

    make autoupdate-drawio-desktop

