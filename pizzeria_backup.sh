#!/bin/bash 

SRC_DIR="/tmp/backups"
DEST_DIR_CHECK=$( ls /tmp | grep $DEST_DIR)
DEST_DIR="updated_menu"
DATE=$(date +%Y-%m-%d)

if [ $DEST_DIR_CHECK = "" ]; then
    mkdir -p $DEST_DIR
    echo "New backup directory created named: $DEST_DIR"
else
    echo "Backup directory already exists named $DEST_DIR"
fi

