#!/bin/bash

#To read content from file
while read myVar
do	
	echo "value from file is $myVar"
done < names.txt


#To read content from csv file
while IFS="," read id name age
do
	echo "Id is $id"
	echo "name is $name"
	#echo "age is $age"
done < test.csv


#In csv if you want to avoid first line
echo -e "\n\n"

cat test.csv | awk 'NR!=1 {print}' | while IFS="," read id name age
do
	echo "Id is $id"
	echo "name is $name"
	echo "age is $age"
done
