#! /bin/bash

./oauth2_proxy \
    -http-address=http://0.0.0.0:4180 \
    -upstream=http://$KIBANA_HOST:5601
