#!/bin/bash

# User Session Logger
# Author: coderhisham
# Task: Logs currently logged-in users with timestamp
# Log File: ~/user_sessions.log

LOG_FILE="$HOME/user_sessions.log"
DATE=$(date '+%Y-%m-%d %H:%M:%S')

# Log header
echo "===== User Sessions at $DATE =====" >> "$LOG_FILE"

# Collect session data
who | awk '{printf "User: %-10s | Terminal: %-10s | Login: %-20s | From: %s\n", $1, $2, $3" "$4, $5}' >> "$LOG_FILE"

# Add a line break for readability
echo "" >> "$LOG_FILE"
