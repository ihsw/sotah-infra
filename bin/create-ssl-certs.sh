#! /bin/bash

sudo pip install certbot-dns-google
sudo certbot \
  --preferred-challenges dns \
  -d sotah.info -d api.sotah.info -d chronograf.sotah.info -d kibana.sotah.info \
  --email adrian@sotah.info certonly
