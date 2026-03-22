#!/bin/bash 

SRC_DIR="/tmp/backups"
DEST_DIR_CHECK=$( ls /tmp | grep "$DEST_DIR" "/tmp")
DEST_DIR="updated_menu"
DATE=$(date +%Y-%m-%d)

if [ -z $DEST_DIR_CHECK ]; then
    mkdir -p "/tmp/$DEST_DIR"
    echo "New backup directory created named: /tmp/$DEST_DIR"
else
    echo "Backup directory already exists named /tmp/$DEST_DIR"
fi

