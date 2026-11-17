#!/bin/bash
#Revision:001$
#$Mon Nov 16 06:44:32 UTC 2026$

#Variables
BASE=/home/ec2-user/archive-test
DAYS=10
DEPTH=1
RUN=0


#Check if the directory is present or not
if [ ! -d $BASE ]
then
	echo "directory does not exists: $BASE"
	exit 1
fi

#Create 'archive' folder if not present
if [ ! -d $BASE/archive ]
then
	mkdir $BASE/archive
fi

#Finding the list of files larger than 20MB

for i in `find $BASE -maxdepth $DEPTH -type f -size +20M` #-maxdepth 1 means it won't descend into archive/
do
	if [ $RUN -eq 0 ]
	then
		echo "[$(date "+%Y-%m-%d %H:%M:%S")] archiving $i ==
		> $BASE/archive" #Logging
		gzip $i || exit 1 #Compress file
		mv $i.gz $BASE/archive || exit 1 #move file to archive
	fi
done

<<comment
To Create Daily Crone Job
crontab -e
05 08 * * * home/ec2-user/myscripts/projects/archive_project.sh
comment
#also give execute permission as, chmod 777 archive_project.sh
