#!/bin/bash

#to pass argument pass them with bash: bash filename arg1 arg2..

#If not passes, there is no error just emty space, but to avoid unwanted script run use exit

if [[ $# -eq 0 ]]
then
       echo "Please provide atleast one argument"	
	exit 1
fi


#to access the arguments
echo "First argument is $1"
echo "Second argument is $2"

#To access all arguments and count them
echo "All the arguments are - $@"
echo "Number of arguments are - $#"


#For loop to access the filename from arguments
for filename in $@
do 
	echo "Copying file name - $filename"
done
