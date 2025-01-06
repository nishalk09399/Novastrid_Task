#!/bin/bash

SOURCE_DIR = "home/source"
BACKUP_DIR = "/var/www/app"
TIMESTAMP = $(date "+%YY-%MM-%DD")
BACKUP_FILE = "/mybackup/-$SOURCE_DIR-$BACKUP_DIR-$TIMESTAMP.tar.gz"

echo "backup completed successfully: tar -czf $BACKUP_FILE"
 

find /var/myapp -type f *.tar.gz -mtime +7 -exec rm -i {} \ 
 

if [ userid == 0 ]
 then 
	echo "install: yum install tar gz cron -y"
 else
	echo "you are not a valide user to install the package: ERROR"
fi 
