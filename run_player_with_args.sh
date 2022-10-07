#!/bin/sh
printf "check kernel: \n"
uname -a

printf "check hostname: \n"

echo "hostname: $HOSTNAME"

host_name=`hostname`

echo "hostname as var: $host_name"

#DISPLAY=:0 XAUTHORITY=/run/user/1000/gdm/Xauthority XDG_RUNTIME_DIR=/run/user/1000 savron-player --cms http://10.0.25.22:4038/ --key sEleBaOh --lib /home/svrn/xibo_config/lib --dID $host_name --dName $host_name

exec savron-player --cms http://10.0.25.22:4038/ --key sEleBaOh --lib /home/svrn/xibo_config/lib --dID $host_name --dName $host_name
