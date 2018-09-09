FROM debian

RUN apt-get update -y \
    && apt-get install -yq wget

WORKDIR /srv/app
COPY ./bin /srv/app

ENV OAUTH2_PROXY_VERSION=oauth2_proxy-2.2.0.linux-amd64.go1.8.1
ENV OAUTH2_PROXY_FILENAME=$OAUTH2_PROXY_VERSION.tar.gz
ENV OAUTH2_PROXY_URL=https://github.com/bitly/oauth2_proxy/releases/download/v2.2/$OAUTH2_PROXY_FILENAME
ENV OAUTH2_TEMP_DESTINATION=/tmp/$OAUTH2_PROXY_FILENAME
RUN wget -O $OAUTH2_TEMP_DESTINATION $OAUTH2_PROXY_URL \
    && tar -xzf $OAUTH2_TEMP_DESTINATION -C /tmp \
    && cp /tmp/$OAUTH2_PROXY_VERSION/oauth2_proxy /srv/app

CMD ["./run.sh"]
