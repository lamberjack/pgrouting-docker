#!/bin/bash
 
 VOLUME_NAME=$1
#  BACKUP_NAME=postgis-docker_pgis-data-11-04-2023.tar.gz
 BACKUP_NAME=$2

echo "Restore backup "$BACKUP_NAME" into "Docker volume: $VOLUME_NAME


docker run --rm -i -v $VOLUME_NAME:/$VOLUME_NAME busybox tar -xzC /$VOLUME_NAME < ./backups/$BACKUP_NAME
# docker run --rm -i -v "$(pwd)/pgis-data":/$VOLUME_NAME busybox tar -xzC /$VOLUME_NAME < ./backups/$BACKUP_NAME