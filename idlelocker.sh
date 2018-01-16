#!/bin/bash

if pgrep "i3lock" > /dev/null
then
    exit
else
    idleAfter=600000
    idleTimeMillis=$(./getIdle)
    if [[ $idleTimeMillis -gt $idleAfter ]]
        then
    	    i3lock   
fi

