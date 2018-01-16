#!/bin/bash

if pgrep "i3lock" > /dev/null
then
#echo "debug exit" | systemd-cat
    exit
else
    idleAfter=600000
    idleTimeMillis=$(/opt/idlelock/getIdle)
#    echo $idleTimeMillis
    if [[ $idleTimeMillis -gt $idleAfter ]]
        then
            echo debug log | systemd-cat
            DISPLAY=:0
            /home/cigh/.config/i3/lock
    fi
fi