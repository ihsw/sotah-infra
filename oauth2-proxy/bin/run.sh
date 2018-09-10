#! /bin/bash

./oauth2_proxy \
    -http-address=http://0.0.0.0:4180 \
    -upstream=http://$KIBANA_HOST:5601 \
    -email-domain=$GOOGLE_DOMAINS \
    -redirect-url=https://kibana.sotah.info/oauth2/callback \
    -cookie-secret=$OAUTH2_PROXY_COOKIE_SECRET \
    -cookie-name=kibana-sotah
