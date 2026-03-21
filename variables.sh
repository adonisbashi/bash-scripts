#!/bin/bash
#
PIZZERIA_NAME="Papa's Pizza"
LOCATION="Farmington Hills"
BACKUP_DIR="/tmp/backups"
DATE=$(date +%Y-%m-%d)

echo "Welcome to $PIZZERIA_NAME"
echo "Located in $LOCATION"
echo "Today's date: $DATE"
echo "Backups will be saved to: $BACKUP_DIR"

mkdir -p $BACKUP_DIR
echo "Backup directory created at $BACKUP_DIR"
