FROM ubuntu:20.04

LABEL maintainer="xuewenG" \
    site="https://github.com/xuewenG/dockerfile"

ARG TR_VERSION=2.94*

WORKDIR /root

ENV PORT=9091 \
    USERNAME="admin" \
    PASSWORD="adminadmin"

RUN set -x \
    && apt-get update -y \
    && apt-get install wget transmission-daemon=$TR_VERSION -y \
    && mkdir -p /tmp/tr-web \
    && cd /tmp/tr-web \
    && wget https://github.com/ronggang/transmission-web-control/archive/v1.6.1-update1.tar.gz -O web.tar.gz \
    && tar -xzvf web.tar.gz --strip-components=1 \
    && cp /usr/share/transmission/web/index.html /usr/share/transmission/web/index.original.html \
    && cp -rf src/* /usr/share/transmission/web/ \
    && cd /root \
    && apt-get remove wget -y \
    && apt-get clean \
    && rm -rf /tmp/* /var/lib/apt/lists/*

COPY rootfs /

ENTRYPOINT ["docker-entrypoint.sh"]

CMD exec transmission-daemon \
    --foreground \
    --config-dir "/transmission" \
    --port $PORT \
    --username $USERNAME \
    --password $PASSWORD
