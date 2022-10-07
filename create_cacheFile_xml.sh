#!/bin/sh
DEFAULT_CONFIG_DIR="/home/svrn/deneme/xibo_config_ws/test/xibo_config"
CONFIG_DIR="${1:-$DEFAULT_CONFIG_DIR}"
echo "create_cacheFile_xml -> CONFIG_DIR : ${CONFIG_DIR}"

header='<?xml version="1.0" encoding="utf-8"?>
<cache version="2">'
footer='</cache>'


{
printf "%s\n" "$header"
printf "$fmt"
printf "%s\n" "$footer"
} > ${CONFIG_DIR}/cacheFile.xml
