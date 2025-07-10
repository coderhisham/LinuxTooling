#!/bin/bash

# Suspicious Login Monitor
# Author: coderhisham
# Task: Monitor failed SSH login attempts and block suspicious IPs
# Log File: ~/suspicious_logins.log

LOG_FILE="$HOME/suspicious_logins.log"
AUTH_LOG="/var/log/auth.log"  # Use /var/log/secure on CentOS/RHEL
THRESHOLD=5
DATE=$(date '+%Y-%m-%d %H:%M:%S')

# Extract failed login IPs
grep "Failed password" "$AUTH_LOG" | awk '{for(i=1;i<=NF;i++) if ($i=="from") print $(i+1)}' | sort | uniq -c | while read -r COUNT IP; do
    if [ "$COUNT" -gt "$THRESHOLD" ]; then
        # Check if IP is already blocked
        if ! sudo iptables -L INPUT -v -n | grep -q "$IP"; then
            sudo iptables -A INPUT -s "$IP" -j DROP
            echo "$DATE - Blocked IP: $IP after $COUNT failed attempts" >> "$LOG_FILE"

            # Optional email alert (requires mail configured)
            if command -v mail >/dev/null 2>&1; then
                echo "Blocked IP: $IP after $COUNT failed login attempts on $(hostname) at $DATE" | \
                mail -s "Suspicious Login Blocked: $IP" admin@example.com
            fi
        fi
    fi
done
