#!/bin/bash 

SRC_DIR="/tmp/backups"
DEST_DIR="/tmp/updated_menu"
DATE=$(date +%Y-%m-%d)
TAR_BACKUP="$DEST_DIR/backup_$DATE.tar.gz"


if [[ ! -d "$DEST_DIR" ]]; then
    mkdir -p "$DEST_DIR"
    echo "New backup directory created named: $DEST_DIR"
else
    echo "Backup directory already exists named $DEST_DIR"
fi

tar -czvf "$TAR_BACKUP" "$SRC_DIR"
EXIT_CODE=$?

echo "Backup finished at $(date)"
echo "Files backed up: $(ls $DEST_DIR | wc -l)"

if [[ $EXIT_CODE -eq 0 ]]; then
    echo "Backup successful!"
else
    echo "ERROR: Backup failed!"
fi