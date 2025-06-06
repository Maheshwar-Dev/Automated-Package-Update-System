#!/bin/bash

LOG_FILE="/var/log/update_health.log"
EMAIL="soulblaze616@gmail.com"
SUBJECT="System Update & Health Report"

# Function to check and install updates
update_system() 
{
    echo "Checking for updates..." >> "$LOG_FILE"

    if command -v apt &> /dev/null; then
        sudo apt update && sudo apt upgrade -y >> "$LOG_FILE" 2>&1
    elif command -v dnf &> /dev/null; then
        sudo dnf update -y >> "$LOG_FILE" 2>&1
    elif command -v yum &> /dev/null; then
        sudo yum update -y >> "$LOG_FILE" 2>&1
    else
        echo "Package manager not found!" >> "$LOG_FILE"
        exit 1
    fi
}

# Function to check disk space and memory usage
check_system_health() 
{
    echo "Checking disk and memory usage..." >> "$LOG_FILE"
    echo "Disk Usage:" >> "$LOG_FILE"
    df -h >> "$LOG_FILE"
    echo "Memory Usage:" >> "$LOG_FILE"
    free -h >> "$LOG_FILE"
}

# Function to send email report
send_email_report() 
{
    if [ -s "$LOG_FILE" ]; then
        mail -s "$SUBJECT" "$EMAIL" < "$LOG_FILE"
    fi
}

# Main function
main() 
{
    echo "===== System Update & Health Check Started: $(date) =====" >> "$LOG_FILE"
    update_system
    check_system_health
    send_email_report
    echo "===== Process Completed: $(date) =====" >> "$LOG_FILE"
}

# Execute the script
main
