#!/bin/sh
echo "call_reset_with_sudo START ..."
DEFAULT_PASSWORD=1234
DEFAULT_CONFIG_DIR="/home/svrn/deeme/xibo_config_ws/test/xibo_config"

echo "First arg: $1"
echo "Second arg: $2"

PASSWORD="${1:-$DEFAULT_PASSWORD}"
CONFIG_DIR="${2:-$DEFAULT_CONFIG_DIR}"
echo "password : ${PASSWORD}"
echo "current DIR : ${PWD}"
echo "CONFIG_DIR : ${CONFIG_DIR}"

echo "calling reset_config.sh with sudo..."
echo ${PASSWORD} | sudo -S ./reset_config.sh ${CONFIG_DIR}

echo "calling create_empty_configs.sh with sudo..."
echo ${PASSWORD} | sudo -S ./create_empty_configs.sh ${CONFIG_DIR}


echo "call_reset_with_sudo END ..."
