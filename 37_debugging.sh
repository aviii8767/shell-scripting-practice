#!/bin/bash

#to debugg add below line in the beggining of script
set -x

if [[ $# -eq 0 ]]
then
       echo "Please provide atleast one argument"	
	exit 1
fi

#to access the arguments
echo "First argument is $1"
echo "Second argument is $2"


#For loop to access the filename from arguments
for filename in $@
do 
	echo "Copying file name - $filename"
done



#If we want to exit our script when a command fail
set -e

pwd
date
cd /root #this will give permission denied error, our script exit here but without set -e it will execute next command even after error
hostname


