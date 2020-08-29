#!/bin/bash

[[ "$DEBUG" == "true" ]] && set -x

config_sample_file="/root/settings-sample.json"

config_dir="/transmission/"
config_name="settings.json"
config_file=$config_dir$config_name

if [[ ! -f $config_file ]]; then
    mkdir -p $config_dir
    cp $config_sample_file $config_file
fi

exec "$@"
