# filebeat-logstash-influxdb

## 基于Json日志格式的采集分析展示

## 使用插件

* filebeat 
* logstash
* influxdb
* grafana 

## 插件功能 

- filebeat ： 日志采集
- logstash ： 日志解析及转存
- influxdb ： 日志存储组件
- grafana  :  数据展示 

可通过zabbix进行告警，主要通过influxdb查询实现

## influxdb 操作

```
创建数据库 

执行
influx -precision rfc3339 

：Connected to http://localhost:8086 version 1.2.x
：InfluxDB shell 1.2.x
：>
说明 ：-precision参数表明了任何返回的时间戳的格式和精度，在上面的例子里，rfc3339是让InfluxDB返回RFC339格式(YYYY-MM-DDTHH:MM:SS.nnnnnnnnnZ)的时间戳。

命令：
CREATE DATABASE nginx_access_log; 

查看数据库
SHOW DATABASES 

> USE nginx_access_log
Using database nginx_access_log

创建认证用户
CREATE USER admin WITH PASSWORD 'admin123' WITH ALL PRIVILEGES

influxdb 删除数据
DELETE FROM "logstash" WHERE time < '2020-06-30T05:25:52.883Z'

influxdb 查询最近30分钟数据
SELECT COUNT("uri") FROM "logstash" WHERE "status" = '401' AND time > now() - 30m
SELECT MODE("uri") FROM "logstash" WHERE "status" = '401' AND time > now() - 30m

创建保留策略
CREATE RETENTION POLICY "four_days" ON "nginx_access_log" DURATION 168h REPLICATION 1 DEFAULT
```
