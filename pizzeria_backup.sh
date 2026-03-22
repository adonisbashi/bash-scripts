#!/bin/bash 

SRC_DIR="/tmp/backups"
DEST_DIR="/tmp/updated_menu_backups"
DATE=$(date +%Y-%m-%d)

if [ "$DEST_DIR" != "/tmp/updated_menu_backups" ]; then
    mkdir -p $DEST_DIR
    echo "New backup directory created named: $DEST_DIR"
else
    echo "Backup directory already exists named $DEST_DIR"
fi

