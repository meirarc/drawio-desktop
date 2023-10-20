# drawio-xml-svg
Transform Drawio XML file to SGV format

docker run -it -v /workspaces/drawio-xml-svg:/data rlespinasse/drawio-desktop-headless -x -f svg -o /data/src/tests/test_data/test_diagram.svg /data/src/tests/test_data/test_diagram.drawio


Dockerfile

FROM ubuntu:latest

# Install drawio-desktop and other necessary packages
RUN apt-get update && \
    apt-get install -y wget && \
    wget https://github.com/jgraph/drawio-desktop/releases/download/v22.0.3/drawio-amd64-22.0.3.deb && \
    apt-get install -y ./drawio-amd64-22.0.3.deb

# Define the entrypoint
ENTRYPOINT ["/opt/drawio/drawio"]


docker build -t your-image-name .



docker push your-image-name
