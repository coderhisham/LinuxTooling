# 🧰 LinuxTooling

A collection of practical Linux system administration tools written in Bash.  

## 📦 Included Tools

| Task No. | Script                        | Description                                                         |
| -------- | ----------------------------- | ------------------------------------------------------------------- |
| 1        | `disk_space_alert.sh`         | Monitors disk usage and alerts via email if it crosses a threshold. |
| 2        | `old_file_archiver.sh`        | Archives files older than 30 days to save disk space.               |
| 5        | `zombie_process_detector.sh`  | Detects zombie processes and logs them with optional email alerts.  |
| 6        | `suspicious_login_monitor.sh` | Blocks IPs after repeated failed SSH login attempts.                |
| 10       | `user_session_logger.sh `     | Logs all active user sessions hourly.                               |

---

## 🛠️ Requirements

- Bash
- Standard Linux commands: `df`, `find`, `ps`, `iptables`, `who`, `awk`, `grep`, etc.
- Optional: `mail` or `mailx` for email notifications
- Cron for scheduling scripts

---

## 🚀 Usage

1. Clone the repository:

```bash
git clone https://github.com/your-username/LinuxTooling.git
cd LinuxTooling
```

2. Make any script executable:

```bash
chmod +x task1_disk_space_alert.sh
```

3. Run manually or add to `cron` for automation.

---

## 📂 Structure

Each script is self-contained and includes:

- Descriptive inline comments
- Logging to a dedicated file in the user's home directory
- Optional email alerts (can be enabled after configuring `mail`)

---

## 📚 Author

* [`coderhisham`](https://coderhisham.com)

---

## 📝 License

This project is licensed for educational use. Feel free to reuse or adapt with credit.