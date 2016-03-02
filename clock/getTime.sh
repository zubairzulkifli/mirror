#!/bin/bash
while true; do 
    echo -n $(date +%H:%M) > /home/basti/mirror/clock/time.txt;
    sleep 55;
done
