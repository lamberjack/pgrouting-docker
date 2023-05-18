#!/bin/bash
 
if [ $# -ne 2 ]; then
    echo "You have to pass the container name and the backup to restore!"
    exit 1
fi

 CONTAINER_NAME=$1
 BACKUP_NAME=$2

echo "Restore backup ./backups/$BACKUP_NAME into Docker volume: $CONTAINER_NAME"

### copy the backup from local backups folder to the docker container
docker cp ./backups/$BACKUP_NAME $CONTAINER_NAME:backup.sql

### restore the backup previously copied
docker exec $CONTAINER_NAME psql -f backup.sql -U postgres