FROM ubuntu:20.04

LABEL maintainer="xuewenG" \
    site="https://github.com/xuewenG/dockerfile"

ARG QB_VERSION=1:4.2.5.99*

WORKDIR /root

ENV PORT=8081

RUN set -x \
    && apt-get update -y \
    && apt-get install gnupg -y \
    && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 401E8827DA4E93E44C7D01E6D35164147CA69FC4 \
    && echo 'deb http://ppa.launchpad.net/qbittorrent-team/qbittorrent-stable/ubuntu focal main' > /etc/apt/sources.list.d/qbitorrent.list \
    && echo 'deb-src http://ppa.launchpad.net/qbittorrent-team/qbittorrent-stable/ubuntu focal main' >> /etc/apt/sources.list.d/qbitorrent.list \
    && apt-get update -y \
    && apt-get install qbittorrent-nox=$QB_VERSION -y \
    && apt-get clean \
    && rm -rf /tmp/* /var/lib/apt/lists/*

COPY rootfs /

ENTRYPOINT ["docker-entrypoint.sh"]

CMD exec qbittorrent-nox \
    --profile="/" \
    --webui-port=$PORT
