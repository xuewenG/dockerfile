#!/bin/bash

[[ "$DEBUG" == "true" ]] && set -x

config_sample_file="/root/qBittorrent-sample.conf"

config_dir="/qBittorrent/config/"
config_name="qBittorrent.conf"
config_file=$config_dir$config_name

if [[ ! -f $config_file ]]; then
    mkdir -p $config_dir
    cp $config_sample_file $config_file
fi

exec "$@"
