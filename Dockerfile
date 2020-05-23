# Dockerfile: hombre-influxdb

FROM influxdb:1.8

ARG version

LABEL version="${version}"
LABEL description="Customized InfluxDB Docker image"
LABEL maintainer="Hombrelab <me@hombrelab.com>"
LABEL inspiration="getting things done my way"

RUN apt update && apt install -y \
    bash \
    nano \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*