#!/bin/bash
 
if [ $# -ne 1 ]; then
    echo "You have to pass the database container name!"
    exit 1
fi

 CONTAINER_NAME=$1
 
 DATE=`date "+%d-%m-%Y"`
 
 BACKUP_NAME=$CONTAINER_NAME"-"$DATE".sql"

echo "Backup "$CONTAINER_NAME" into "$(pwd)/backups/


### create the dump of all database of the container and store it inside 
docker exec -i $CONTAINER_NAME /usr/bin/pg_dumpall -U postgres > ./backups/$BACKUP_NAME
