#!/bin/bash

read -p "Enter your marks: " marks

if [[ $marks -gt 40 ]]
then
	echo "You are PASS"
else
	echo "You are FAIL!"
fi

#In above if comndition's square bracket must be start space and end space
#and if end with fi
