#!/bin/sh
DEFAULT_CONFIG_DIR="/home/svrn/deneme/xibo_config_ws/test/xibo_config"
CONFIG_DIR="${1:-$DEFAULT_CONFIG_DIR}"
echo "create_empty_configs -> CONFIG_DIR : ${CONFIG_DIR}"

echo "create_schedule_xml ..."
./create_schedule_xml.sh ${CONFIG_DIR}
echo "create_cacheFile_xml ..."
./create_cacheFile_xml.sh ${CONFIG_DIR}
## possibly not needed
# echo "create_cmsSettings_xml ..."
# ./create_cmsSettings_xml.sh ${CONFIG_DIR}
# echo "create_playerSettings_xml ..."
# ./create_playerSettings_xml.sh ${CONFIG_DIR}

echo "fixing permissions"
# find . -name "*.xml" -exec chmod 777 {} \;
chmod 777 ${CONFIG_DIR}/schedule.xml
chmod 777 ${CONFIG_DIR}/cacheFile.xml
## possibly not needed
# chmod 777 ${CONFIG_DIR}/cmsSettings.xml
# chmod 777 ${CONFIG_DIR}/playerSettings.xml

echo "fixing ownership"
chown svrn:svrn ${CONFIG_DIR}/schedule.xml
chown svrn:svrn ${CONFIG_DIR}/cacheFile.xml
## possibly not needed
# chown svrn:svrn ${CONFIG_DIR}/cmsSettings.xml
# chown svrn:svrn ${CONFIG_DIR}/playerSettings.xml


