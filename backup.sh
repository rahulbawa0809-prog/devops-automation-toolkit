#!/bin/bash

# ==============================
# DevOps Automation Toolkit
# Backup Script
# ==============================

# Project directory (parent directory)
PROJECT_DIR="../"

# Backup directory
BACKUP_DIR="../backup"

# Create backup directory if not exists
if [ ! -d "$BACKUP_DIR" ]; then
    mkdir -p "$BACKUP_DIR"
fi

# Get current date
DATE=$(date +%Y_%m_%d)

# Backup file name
BACKUP_NAME="backup_${DATE}.tar.gz"

# Create compressed backup
tar -czf "$BACKUP_DIR/$BACKUP_NAME" "$PROJECT_DIR"

# Check if backup was successful
if [ $? -eq 0 ]; then
    echo "Backup created successfully: $BACKUP_NAME"
else
    echo "Error creating backup!"
fi

# ==============================
# Delete backups older than 7 days
# ==============================

find "$BACKUP_DIR" -type f -name "*.tar.gz" -mtime +7 -exec rm {} \;

echo "Old backups deleted (older than 7 days)."
