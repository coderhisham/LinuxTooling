# 🚨 Suspicious Login Monitor

## 📌 Project Overview

This script scans the authentication log (`/var/log/auth.log`) for failed SSH login attempts. If any IP address has more than 5 failures, it is blocked using `iptables` and logged.

## 📂 File

- `suspicious_login_monitor.sh` – Blocks brute-force IPs and logs actions.

## ⚙️ Requirements

- Linux-based OS with SSH server
- `iptables`, `awk`, `grep`, `mail` (optional)
- Script must be run with sudo or root

## 🛠️ Setup & Usage

### 1. Make the Script Executable

```bash
chmod +x suspicious_login_monitor.sh
```

### 2. Run the Script

```bash
sudo ./suspicious_login_monitor.sh
```

### 3. Log File

Logs stored at `~/suspicious_logins.log` with IP and failure count.

### 4. Email Notification (Optional)

Ensure `mail` is installed and configured.

### 5. Automate with Cron (every 15 mins)

```bash
sudo crontab -e
# Add:
*/15 * * * * /full/path/to/task6_suspicious_login_monitor.sh
```

### 🔐 On CentOS/RHEL:

Update this line in the script:

```bash
AUTH_LOG="/var/log/secure"
```

## 📚 Author

- Name: [`coderhisham`](https://coderhisham.com)
- Date: July 2025
