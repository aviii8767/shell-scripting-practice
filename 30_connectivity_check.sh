#!/bin/bash

#To see script status example


read -p "Which site you want to check? " site

#This will check the site is reachable
ping -c 1 $site


if [[ $? -eq 0 ]]
then 
	echo "Successfully connected to $site"
else 
	echo "Unable to connecty $site"
fi


<<comment
$? → holds the exit status (or exit code) of the most recently executed command, It acts as an immediate health check for your script's actions,
 letting you know if a command succeeded or failed before moving on to the next task.0 means Success.If the ping cmd run successfully means $?=0 means connection success
comment
