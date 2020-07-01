#!/bin/bash
docker run -d --name=influxdb-grafana -p 8083:8083 -p8086:8086 --expose 8090 --expose 8099 \
      -v /data/grafanainfluxdb/influxdb/data:/var/lib/influxdb \
      influxdb
