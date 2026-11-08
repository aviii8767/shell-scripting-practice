#!/bin/bash

#AND Operator

read -p "What is your age? " age
read -p "Your Country:  " country

if [[ $age -ge 18 ]] && [[ $country == india ]]
then 
	echo "You can vote"
else
	echo "You can't vote"
fi

#Remember -eq is mainly for numeric comparison and == for string comparison

#and in above if comndition's square bracket must be start space and end space
