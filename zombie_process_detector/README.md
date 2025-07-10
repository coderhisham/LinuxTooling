# 🧟 Zombie Process Detector

## 📌 Project Overview
This script identifies zombie processes on the system (those in the `Z` state), logs their details, and optionally sends an email notification if zombies are found.

## 📂 File

- `zombie_process_detector.sh` – Detects zombie processes and logs them.

## ⚙️ Requirements

- Linux OS with Bash shell
- `ps`, `awk`, `mail` utilities

## 🛠️ Setup & Usage

### 1. Make the Script Executable
```bash
chmod +x zombie_process_detector.sh
```

### 2. Run the Script
```bash
./task5_zombie_process_detector.sh
```

### 3. Check the Log File
```bash
cat ~/zombie_processes.log
```

### 4. Email Notification (Optional)
Make sure `mail` or `mailx` is installed and configured. To install on Debian/Ubuntu:
```bash
sudo apt install mailutils
```

### 5. Schedule with Cron (Every 30 mins example)
```bash
crontab -e
# Add this line:
*/30 * * * * /full/path/to/zombie_process_detector.sh
```

## 🧪 Sample Log Entry

```
2025-07-10 16:30:00 - Zombie processes detected:
1234  5678  Z  [zombie-command]
```

## 📚 Author

- Name: [`coderhisham`](https://coderhisham.com)
- Date: July 2025
