#!/bin/bash 

SRC_DIR="/tmp/backups"
DEST_DIR="/tmp/updated_menu"
DATE=$(date +%Y-%m-%d)

if [[ ! -d "$DEST_DIR" ]]; then
    mkdir -p "/tmp/$DEST_DIR"
    echo "New backup directory created named: $DEST_DIR"
else
    echo "Backup directory already exists named $DEST_DIR"
fi