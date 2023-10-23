# drawio-xml-svg

## Pre solution to test the Drawio File Conversion
Transform Drawio XML file to SGV format

Run test directo on the Codespace environment

    docker run -it -v /workspaces/drawio-xml-svg:/data rlespinasse/drawio-desktop-headless -x -f svg -o /data/src/tests/test_data/test_diagram.svg /data/src/tests/test_data/test_diagram.drawio

Run test on the Codespace remotely run on the local VS Code

    docker run -it -w /data -v $(pwd):/data rlespinasse/drawio-desktop-headless -x -f svg -o /data/src/tests/test_data/test_diagram.svg /data/src/tests/test_data/test_diagram.drawio


## Updated Solution

Dockerfile

    FROM ubuntu:latest

    # Install drawio-desktop and other necessary packages
    RUN apt-get update && \
        apt-get install -y wget && \
        wget https://github.com/jgraph/drawio-desktop/releases/download/v22.0.3/drawio-amd64-22.0.3.deb && \
        apt-get install -y ./drawio-amd64-22.0.3.deb
    # Define the entrypoint
    ENTRYPOINT ["/opt/drawio/drawio"]


## Build

    make build

## Autoupdate Drawio-desktop version

    make autoupdate-drawio-desktop

## Push

    make push

## Run

    docker run -it -w /data -v $(pwd):/data meirarc/drawio-desktop -x -f svg -o /data/src/tests/test_data/test_diagram.svg /data/src/tests/test_data/test_diagram.drawio
