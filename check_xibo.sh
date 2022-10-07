#!/bin/bash

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
