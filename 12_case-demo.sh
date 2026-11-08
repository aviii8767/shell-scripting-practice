#!/bin/bash

echo -e "\na for print date"
echo "b for list of scripts"
echo "c to check the current location"

read -p "what is your choice? " choice

case $choice in
	a)
		echo "Today's date is:"
		date
		echo "Ending..."
		;;

	b)ls;;
	c)pwd;;
	*)echo "Please provide a valid choice"
esac
