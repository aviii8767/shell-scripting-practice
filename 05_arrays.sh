#!/bin/bash

#Array in Shell scripting is SPACE seperated

#Normal echo does not interpret \n use -e then \n in command as used below

myArray=(1 20 40.7 Hello "Hey Buddy!")

echo "${myArray[4]}"

echo -e "\nValue in 3rd index is ${myArray[3]}"

echo -e "\nAll the values in array are ${myArray[*]}"


#How to find no.of values in an array
echo -e "\nNo. of values, length of an array is ${#myArray[*]}"


#How to get specific values
#[*]Start:Length
echo -e "\nAll values from index 1: ${myArray[*]:1}"
echo -e "\nValues from index 1 and length 2: ${myArray[*]:1:2}"
echo -e "\nValues from index 2 and length 3: ${myArray[*]:2:3}"


#How to update an array
myArray+=(5 10 15)

echo -e "\nValues of new array are ${myArray[*]}"

#Normal echo does not interpret \n use -e then \n in command as shown above

