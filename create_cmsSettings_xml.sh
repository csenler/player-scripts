#!/bin/sh
DEFAULT_CONFIG_DIR="/home/svrn/deneme/xibo_config_ws/test/xibo_config"
CONFIG_DIR="${1:-$DEFAULT_CONFIG_DIR}"
echo "create_cmsSettings_xml -> CONFIG_DIR : ${CONFIG_DIR}"
echo "hostname: ${HOSTNAME}" 


header='<?xml version="1.0" encoding="utf-8"?>
<settings version="2">'

# fmt='    <cmsAddress>http://10.0.25.22:4038/</cmsAddress>
#     <key>sEleBaOh</key>
#     <localLibrary>&quot;/home/svrn/xibo_config/lib&quot;</localLibrary>
#     <username></username>
#     <password/>
#     <domain/>
#     <displayId>$HOSTNAME</displayId>
# '

fmt='    <cmsAddress>http://10.0.25.22:4038/</cmsAddress>
    <key>sEleBaOh</key>
    <localLibrary>&quot;'${CONFIG_DIR}'&quot;</localLibrary>
    <username></username>
    <password/>
    <domain/>
    <displayId>'$HOSTNAME'</displayId>
'

footer='</settings>'


{
printf "%s\n" "$header"
printf "$fmt"
printf "%s\n" "$footer"
} > ${CONFIG_DIR}/cmsSettings.xml
