#!/bin/bash
echo "START ..."

DEFAULT_PASSWORD=1234
DEFAULT_CONFIG_DIR="/home/svrn/xibo_config"
FOUND_CONFIG_DIR="asd"

#################################
# ### test -> spaces before/after brackets are IMPORTANT !!!
# if [ -n "$FOUND_CONFIG_DIR" ];
# then
# echo "FOUND_CONFIG_DIR not empty"
# echo "FOUND_CONFIG_DIR: ${FOUND_CONFIG_DIR}"
# else
# echo "FOUND_CONFIG_DIR empty"
# echo "FOUND_CONFIG_DIR: ${FOUND_CONFIG_DIR}"
# fi

# exit
##################################

if [ -d "/home/svrn/xibo_config" ]
then
FOUND_CONFIG_DIR="/home/svrn/xibo_config"
elif [ -d "/home/svrn/snap/savron-player/common" ]
then
FOUND_CONFIG_DIR="/home/svrn/snap/savron-player/common"
else
echo "Config directory not found"
# FOUND_CONFIG_DIR="/home/svrn/xibo_config_ws/test/xibo_config"
# file="TEMP"
fi


if [ -n "$FOUND_CONFIG_DIR" ];
then
CONFIG_DIR=${FOUND_CONFIG_DIR}
echo "CONFIG_DIR: ${CONFIG_DIR}"
echo "calling reset_config.sh with sudo..."
echo ${DEFAULT_PASSWORD} | sudo -S ./reset_config.sh ${CONFIG_DIR}
echo "calling create_empty_configs.sh with sudo..."
echo ${DEFAULT_PASSWORD} | sudo -S ./create_empty_configs.sh ${CONFIG_DIR}
else
# CONFIG_DIR=${DEFAULT_CONFIG_DIR}
echo "exiting..."
exit
fi


echo "FINISHED SUCCESSFULLY ??"
exit