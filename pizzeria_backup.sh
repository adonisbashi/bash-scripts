#!/bin/bash 

SRC_DIR="/tmp/backups"
DEST_DIR="/tmp/updated_menu"
DATE=$(date +%Y-%m-%d)
TAR_BACKUP="$DEST_DIR/backup_$DATE.tar.gz"


if [[ ! -d "$DEST_DIR" ]]; then
    mkdir -p "/tmp/$DEST_DIR"
    echo "New backup directory created named: $DEST_DIR"
else
    echo "Backup directory already exists named $DEST_DIR"
fi

if [[ -d "$SRC_DIR" ]]; then
    tar -czvf "$TAR_BACKUP" "$SRC_DIR"
    echo "Created archive: $TAR_BACKUP"
else
    echo "Error: directory '$SRC_DIR' not found!"
fi