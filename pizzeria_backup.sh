#!/bin/bash 

SRC_DIR="/tmp/backups"
DEST_DIR="updated_menu"
DEST_DIR_CHECK=$(ls -al /tmp/ | grep "$DEST_DIR")
DATE=$(date +%Y-%m-%d)

if [[ ! -d "/tmp/$DEST_DIR" ]]; then
    mkdir -p "/tmp/$DEST_DIR"
    echo "New backup directory created named: /tmp/$DEST_DIR"
else
    echo "Backup directory already exists named /tmp/$DEST_DIR"
fi