#!/bin/bash

#when we pass multiple arguments, we can shift

#To create a user, provide username and description
#bash 27_shift_args.sh Avishkar engineering completed student
echo "Creating user"
echo "Usaername is $1"

#It will shift first argument 
shift
echo "Description is $@"
