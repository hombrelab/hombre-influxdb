# hombre-influxdb
![Docker Pulls](https://img.shields.io/docker/pulls/hombrelab/hombre-influxdb) ![Docker Image Version (latest by date)](https://img.shields.io/docker/v/hombrelab/hombre-influxdb) ![GitHub commit activity](https://img.shields.io/github/last-commit/hombrelab/hombre-influxdb)

The [hombre-influxdb](https://hub.docker.com/repository/docker/hombrelab/hombre-influxdb) image is based on the [official InfluxDB v1.8 Debian Stretch Curl image](https://hub.docker.com/_/influxdb).  
The image is used to create my own [@Hombrelab](me@hombrelab.com) InfluxDB Docker image.  

Includes:
- linux packages: bash, ca-certificates. 

Deployment examples:

Command line
```shell script
docker run \
    --name influxdb \
    --detach \
    --restart unless-stopped \
    --volume /home/data/influxdb/data:/var/lib/influxdb \
    --volume /home/data/influxdb/influxdb.conf:/etc/influxdb/influxdb.conf:ro \
    --volume/etc/localtime:/etc/localtime:ro \
    --publish 8086:8086 \
    --publish 8003:8083 \
    --publish 2003:2003 \
    hombrelab/hombre-influxdb
```
Docker Compose
```yaml
    influxdb:
        container_name: influxdb
        restart: unless-stopped
        image: hombrelab/hombre-influxdb
        volumes:
            - /home/data/influxdb/data:/var/lib/influxdb
            - /home/data/influxdb/influxdb.conf:/etc/influxdb/influxdb.conf:ro
            - /etc/localtime:/etc/localtime:ro
        ports:
            - 8086:8086
            - 8003:8083
            - 2003:2003
```