#! /bin/bash

export INFLUX_HOST=`docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' sotahinfra_influxdb_1`
export NATS_HOST=`docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' sotahinfra_nats_1`
export PG_HOST=`docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' sotahinfra_db_1`
export NGINX_HOST=`docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' sotahinfra_reverse-proxy_1`

service telegraf start
