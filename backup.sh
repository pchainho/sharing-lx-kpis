#!/bin/bash
cd /root/testing
DAY=$(date +%d)
MONTH=$(date +%m)
YEAR=$(date +%y)
HOUR=$(date +%H)
MINS=$(date +%M)
BACKUPSTRING='backup_'$DAY$MONTH$YEAR'_'$HOUR'_'$MINS
mkdir $BACKUPSTRING
cd $BACKUPSTRING
mongodump
git pull
git add .
git commit -m "$BACKUPSTRING"
git push 
