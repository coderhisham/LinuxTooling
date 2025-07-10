#!/bin/bash

# Disk Space Alert System
# Author: coderhisham
# Task: Monitor root (/) partition disk usage and alert if it exceeds threshold
# Default threshold: 80% (can be overridden via argument)
# Log File: ~/disk_alert.log

THRESHOLD=${1:-80}  # Use first argument or default to 80
LOG_FILE="$HOME/disk_alert.log"
EMAIL="hi@coderhisham.com"  # Replace with your email

DATE=$(date '+%Y-%m-%d %H:%M:%S')
HOST=$(hostname)

# Disk Usage Check
USAGE=$(df / | awk 'NR==2 {gsub("%", "", $5); print $5}')

#ALERT
if [ "$USAGE" -ge "$THRESHOLD" ]; then
    # Prepare alert message
    MESSAGE="⚠️ Disk usage alert on $HOST
Time: $DATE
Root partition usage: $USAGE%
Threshold: $THRESHOLD%

Take necessary action immediately!"

    # Send alert email (requires mail/mailx/sendmail configured)
    if command -v mail >/dev/null 2>&1; then
        echo "$MESSAGE" | mail -s "Disk Alert: $HOST Usage ${USAGE}%" "$EMAIL"
    else
        echo "Mail utility not found. Unable to send email alert."
    fi

    ALERT="YES"
else
    ALERT="NO"
fi

#Logging
echo "$DATE - Usage: ${USAGE}% - Threshold: ${THRESHOLD}% - Alert Sent: $ALERT" >> "$LOG_FILE"
