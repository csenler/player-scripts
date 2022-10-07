#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 {PATH TO SCRIPT} {SCRIPT NAME without extension}" >&2
  exit 1
fi

#if ! [ -e "$1" ]; then
#  echo "$1 not found" >&2
#  exit 1
#fi

echo "first arg: $1"
echo "second arg: $2"

SCRIPT_DIR=$1
SCRIPT_NAME=$2

echo "script path: ${SCRIPT_DIR}"
echo "script name: ${SCRIPT_NAME}"

SERVICE_WATCHDOG="xibo-watchdog"
SERVICE_PLAYER="xibo-player"

STATUS_WATCHDOG=0
STATUS_PLAYER=0

if pgrep -x "$SERVICE_WATCHDOG" >/dev/null
then
    echo "$SERVICE_WATCHDOG is running"
    STATUS_WATCHDOG=1
else
    echo "$SERVICE_WATCHDOG stopped"
fi


if pgrep -x "$SERVICE_PLAYER" >/dev/null
then
    echo "$SERVICE_PLAYER is running"
    STATUS_PLAYER=1
else
    echo "$SERVICE_PLAYER stopped"
fi

echo "watchdog status : ${STATUS_WATCHDOG}"
echo "player status : ${STATUS_PLAYER}"

if [ "${STATUS_WATCHDOG}" -eq 1 ] && [ "${STATUS_PLAYER}" -eq 0 ]; then
    bash ${SCRIPT_DIR}/${SCRIPT_NAME}.sh 
fi
