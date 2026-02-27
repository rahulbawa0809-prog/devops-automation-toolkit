#!/bin/bash

# -----------------------------
# VARIABLES
# -----------------------------
LOG_FILE="../logs/setup.log"
DIRS=("logs" "backup" "temp")
DATE=$(date)

echo "Setup started at $DATE" >> $LOG_FILE

# -----------------------------
# CREATE DIRECTORIES USING LOOP
# -----------------------------
for dir in "${DIRS[@]}"
do
    if [ ! -d "../$dir" ]; then
        mkdir "../$dir"
        echo "Directory $dir created" >> $LOG_FILE
    else
        echo "Directory $dir already exists" >> $LOG_FILE
    fi
done

# -----------------------------
# CREATE SAMPLE FILES
# -----------------------------
touch ../logs/sample_log.txt
touch ../backup/sample_backup.txt

echo "Sample log file created" >> $LOG_FILE
echo "Sample backup file created" >> $LOG_FILE

# -----------------------------
# SET PERMISSIONS
# -----------------------------
chmod 755 *.sh
echo "Permissions updated for scripts" >> $LOG_FILE

# -----------------------------
# COMPLETION MESSAGE
# -----------------------------
echo "================================="
echo " Environment Setup Completed ✅ "
echo "================================="

echo "Setup completed successfully at $(date)" >> $LOG_FILE
