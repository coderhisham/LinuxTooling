# 🗃️ Old File Archiver

## 📌 Project Overview

This script helps manage disk space by archiving files older than 30 days from a given directory to a defined archive location. It logs all file movements and ensures original file structure is preserved.

## 📂 File

- `old_file_archiver.sh` – Script to archive files and log actions.

## ⚙️ Requirements

- Linux-based system with Bash
- `find`, `mv`, `mkdir` utilities

## 🛠️ Setup & Usage

### 1. Make the Script Executable

```bash
chmod +x old_file_archiver.sh
```

### 2. Run the Script

```bash
./old_file_archiver.sh /path/to/source /path/to/archive
```

- Default source: `~/target`
- Default archive: `~/archive`

### 3. Log File

Output is logged to `~/file_archiver.log`.

## 🔁 Schedule with Cron

Run weekly or daily. Example (daily at 1 AM):

```bash
crontab -e
# Add line:
0 1 * * * /full/path/to/old_file_archiver.sh /path/to/source /path/to/archive
```

## 🧪 Sample Log Entry

```
2025-07-10 01:00:00 - Moved: /home/user/target/oldfile.txt --> /home/user/archive/oldfile.txt
```

## 📚 Author

- Name: [`coderhisham`](https://coderhisham.com)
- Date: July 2025
