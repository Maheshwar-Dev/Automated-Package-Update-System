**Automated Package Update and Health Check System**

**Introduction:** 

The Automated Package Update and Health Check System is designed to simplify the maintenance of Linux-based systems. It ensures that all installed packages remain up to date, while also monitoring critical system parameters such as disk space and memory usage. By automating these tasks, the script enhances system security, stability, and performance with minimal user intervention.

**Key Features:**

- **Automated Package Updates:** Checks for and installs available updates using system package managers (apt, dnf, yum).

- **System Health Monitoring:** Tracks disk space and memory usage to prevent resource exhaustion.

- **Logging Mechanism:** Stores update history and health reports for future reference.

- **Email Notifications:** Sends detailed reports of updates and system status to the administrator.

- **Scheduled Execution:** Uses crontab to run periodically without manual intervention.


**Modules Required:**

- **Package Manager Commands:** apt, dnf, yum (depending on the distribution).

- **Disk and Memory Monitoring Commands:** df, free.

- **Logging Utilities:** echo, >> (append output to log file).

- **Email Notification Utility:** mail or sendmail for sending reports.

- **Cron Job Scheduler:** crontab for automating script execution.


**Working:**

- **Script Execution:** The script starts by logging the date and time of execution.

- **Update Check & Installation:** It detects the available package manager and installs pending updates.

- **System Health Check:** The script analyzes disk space and memory usage, appending results to the log file.

- **Logging:** All updates and health details are saved in a log file for future reference.

- **Email Reporting:** If enabled, the script sends a summary of updates and health status to the administrator.

- **Automation via Cron Job:** The script is scheduled to run periodically, ensuring the system remains updated and monitored without manual intervention.




**Contributors**
- Maheshwar Singh (23BCS11580)
- Manthan Sharma (23BCS11533)
- Harsh Jha (23BCS12103)
