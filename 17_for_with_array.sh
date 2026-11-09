#!/bin/bash

myArray=( 1 2 3 Hello HI )

length=${#myArray[*]}
for (( i=0;i<$length;i++ ))
do 
	echo "Value in array is ${myArray[$i]}"
done

