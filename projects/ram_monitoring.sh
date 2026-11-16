#!/bin/bash

#Project1 Monitoring Free RAM Space

#Command to see free ram space and alert

FREE_SPACE=$(free -mt | grep "Total" | awk '{print $4}')
THRESHOLD=300

if [[ $FREE_SPACE -lt THRESHOLD ]]
then
	echo "WARNING, RAM is running low"
else
	echo "RAM Space is sufficient - $FREE_SPACE M "
fi

