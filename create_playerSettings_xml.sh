#!/bin/sh
DEFAULT_CONFIG_DIR="/home/svrn/deneme/xibo_config_ws/test/xibo_config"
CONFIG_DIR="${1:-$DEFAULT_CONFIG_DIR}"
echo "create_playerSettings_xml -> CONFIG_DIR : ${CONFIG_DIR}"


header='<?xml version="1.0" encoding="utf-8"?>
<settings version="2">'

fmt='    <sizeX>1920</sizeX>
    <sizeY>1080</sizeY>
    <offsetX>0</offsetX>
    <offfsetY>0</offfsetY>
   <logLevel>error</logLevel>
   <displayName>TEST</displayName>
   <preventSleep>true</preventSleep>
   <statsEnabled>true</statsEnabled>
   <collectInterval>60</collectInterval>
   <xmrNetworkAddress>tcp://10.0.25.22:4037</xmrNetworkAddress>
   <embeddedServerPort>9696</embeddedServerPort>
   <screenshotInterval>0</screenshotInterval>
'


footer='</settings>'


{
printf "%s\n" "$header"
printf "$fmt"
printf "%s\n" "$footer"
} > ${CONFIG_DIR}/playerSettings.xml
