#!/bin/bash

#Using for loop with files(Getting values from a file names.txt

FILE="/home/ec2-user/myscripts/names.txt"

for name in $(cat $FILE)
do
	echo "Name is $name"
done
