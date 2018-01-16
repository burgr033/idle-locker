#!/bin/bash

if pgrep "i3lock" > /dev/null
then
    exit 0
else
    idleAfter=600000 #edit this line for custom idle time
    idleTimeMillis=$($(dirname $0)/getIdle)
    if [[ $idleTimeMillis -gt $idleAfter ]]
        then
            DISPLAY=:0
            i3lock #edit this line for your i3lock script
    fi
fi