#!/bin/bash
#docker run -d -it  registry.cn-hangzhou.aliyuncs.com/vems/logstash-influxdb:v1
docker run -d -it -p 5044:5044 -v  /data/grafanainfluxdb/logstash/pipeline/:/usr/share/logstash/pipeline/ -v  /data/grafanainfluxdb/logstash/settings/:/usr/share/logstash/config/   registry.cn-hangzhou.aliyuncs.com/vems/logstash-influxdb:v1
