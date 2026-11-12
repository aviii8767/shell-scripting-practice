#!/bin/bash

#check if file/dir exist

FILEPATH="/home/ec2-user/myscripts/test3.csv"
<<comment
if [[ -f $FILEPATH ]]
then 
	echo "File exist"
else
	echo "File not exist"
	exit 1
fi

echo "Hello world!!!"
comment


#Creating file if not exist
if [[ -f $FILEPATH ]]
then 
	echo "File exist"
else
	echo "Creating file now"
	touch $FILEPATH
fi


<<comment
if [ -d folder_name ] If folder exists
if [ ! -d folder_name ] If folder not exists

if [ -f file_name ] If file exists
if [ ! -f file_name ] If file not exists
comment
