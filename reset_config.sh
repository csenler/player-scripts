#!/bin/sh
DEFAULT_CONFIG_DIR="/home/svrn/deneme/xibo_config_ws/test/xibo_config"
CONFIG_DIR="${1:-$DEFAULT_CONFIG_DIR}"
echo "reset_config -> CONFIG_DIR : ${CONFIG_DIR}"
echo "delete -> ${CONFIG_DIR}/cacheFile.xml"
rm -vf ${CONFIG_DIR}/cacheFile.xml
echo "delete -> ${CONFIG_DIR}/schedule.xml"
rm -vf ${CONFIG_DIR}/schedule.xml
## possibly not needed
# echo "delete -> ${CONFIG_DIR}/cmsSettings.xml"
# rm -vf ${CONFIG_DIR}/cmsSettings.xml
# echo "delete -> ${CONFIG_DIR}/playerSettings.xml"
# rm -vf ${CONFIG_DIR}/playerSettings.xml
echo "delete -> DONE."

# for error messages, -f(force) parameter should be removed
