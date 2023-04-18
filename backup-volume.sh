#!/bin/bash
 
 VOLUME_NAME=$1
 
 DATE=`date "+%d-%m-%Y"`
 
 BACKUP_NAME=$VOLUME_NAME"-"$DATE".tar.gz"

echo "Backup "$VOLUME_NAME" into "$(pwd)/backups/

docker run --rm -v "$VOLUME_NAME":/backup-volume -v "$(pwd)/backups/":/backup busybox tar -zcvf ./backup/$BACKUP_NAME /backup-volume