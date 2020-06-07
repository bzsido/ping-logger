#!/bin/bash

# amount of time to ping in seconds
T=85400
# interval to wait between pings
I=5
# logfile location
LOG="/var/log/pinglog/pinglog-$(date +%F)"

ping 8.8.8.8 -i "$I" -w "$T" | while read PONG
do
    echo "$(date): $PONG" >> "$LOG"
done
