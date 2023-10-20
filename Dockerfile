FROM ubuntu:latest

# Install drawio-desktop and other necessary packages
RUN apt-get update && \
    apt-get install -y wget && \
    wget https://github.com/jgraph/drawio-desktop/releases/download/v22.0.3/drawio-amd64-22.0.3.deb && \
    apt-get install -y ./drawio-amd64-22.0.3.deb

# Define the entrypoint
ENTRYPOINT ["/opt/drawio/drawio"]
