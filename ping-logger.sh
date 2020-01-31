#!/bin/bash

# amount of time to ping in seconds
#T=85400
T=100
# interval to wait between pings
I=5
# logfile location
LOG="/tmp/pinglog-$(date +%F-%H-%M)"

ping 8.8.8.8 -i "$I" -w "$T" | while read PONG
do 
    echo "$(date): $PONG" >> "$LOG"
done
