# 🖥️ Disk Space Alert System

## 📌 Project Overview

This script monitors the disk usage of the root partition (`/`) and sends an email alert to the system administrator if the usage exceeds a configurable threshold (default is 80%). It also logs each check with the current usage and timestamp.

## 📂 File

- `disk_space_alert.sh` – Shell script that checks root disk usage, logs usage data, and sends alerts.

## ⚙️ Requirements

- Linux-based OS
- Bash shell
- `mail` or `mailx` installed and configured
- Cron
- Optional: root permissions for logging to /var/log

## 🛠️ Setup & Usage

### 1. Make Script Executable

```bash
chmod +x disk_space_alert.sh
```

### 2. (Optional) Edit Script Config

Edit threshold or email address inside the script.

### 3. Run Manually

```bash
./disk_space_alert.sh
./disk_space_alert.sh 85  # With custom threshold
```

### 4. Install `mail` Utility

- Ubuntu/Debian: `sudo apt install mailutils`
- RHEL/CentOS: `sudo yum install mailx`

### 5. Schedule via Cron

```bash
crontab -e
# Add:
*/15 * * * * /full/path/to/disk_space_alert.sh
```

## 📤 Output

- Email alert if threshold exceeded
- Log file at `~/disk_alert.log`

## 📚 Author

- Name: [`coderhisham`](https://coderhisham.com)
- Date: July 2025
