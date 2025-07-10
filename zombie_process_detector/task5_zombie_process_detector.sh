#!/bin/bash

# Zombie Process Detector
# Author: coderhisham
# Task: Detect and log zombie processes
# Log File: ~/zombie_processes.log

LOG_FILE="$HOME/zombie_processes.log"
EMAIL="hi@coderhisham"  # Replace with your email
DATE=$(date '+%Y-%m-%d %H:%M:%S')

# Detect zombie processes
ZOMBIES=$(ps -eo pid,ppid,state,cmd | awk '$3=="Z"')

if [ -n "$ZOMBIES" ]; then
    echo "$DATE - Zombie processes detected:" >> "$LOG_FILE"
    echo "$ZOMBIES" >> "$LOG_FILE"
    echo "" >> "$LOG_FILE"

    # Optional email notification
    if command -v mail >/dev/null 2>&1; then
        echo -e "Zombie processes detected on $(hostname) at $DATE:

$ZOMBIES" |         mail -s "Zombie Process Alert on $(hostname)" "$EMAIL"
    fi
fi
