#!/bin/bash

echo "killing savron-player"
DEFAULT_PASSWORD=1234

echo ${DEFAULT_PASSWORD} | sudo -S killall xibo-watchdog
echo ${DEFAULT_PASSWORD} | sudo -S killall xibo-player
sleep 1
# make sure

echo ${DEFAULT_PASSWORD} | sudo -S killall xibo-watchdog

echo "player should be killed."

echo "DONE."
