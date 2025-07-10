# 👥 User Session Logger

## 📌 Project Overview

This script monitors currently logged-in users and logs their session details including username, terminal, login time, and originating IP. Logs are saved hourly with a timestamp.

## 📂 File

- `user_session_logger.sh` – Script to track and log user sessions.

## ⚙️ Requirements

- Linux-based system with Bash shell
- `who`, `awk` utilities

## 🛠️ Setup & Usage

### 1. Make the Script Executable

```bash
chmod +x user_session_logger.sh
```

### 2. Run the Script

```bash
./user_session_logger.sh
```

### 3. Check Log File

```bash
cat ~/user_sessions.log
```

### 4. Automate with Cron (hourly)

```bash
crontab -e
# Add:
0 * * * * /full/path/to/user_session_logger.sh
```

## 📚 Author

- Name: [`coderhisham`](https://coderhisham.com)
- Date: July 2025
