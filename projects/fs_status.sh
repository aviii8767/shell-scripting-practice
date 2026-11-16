#!/bin/bash

#Project2 Monitoring Free Disk Space and Send Email alert

#File system status
FU=$( df -H | grep -w "nvme0n1p1" | awk '{print $5}' |tr -d %)
TO="gawareavishkar2004@gmail.com"

if [[ $FU -ge 80 ]]
then 
	echo "Warning, disk space is low - $FU %" | mail -s "Disk Space Alert!" $TO 
else
	echo "All good"
fi


