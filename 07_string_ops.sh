#!/bin/bash

myVar="Hey Buddy, How are you?"

#How to find string length
myVarLength=${#myVar}
echo "Length of the myVar is $myVarLength"


#How to convert string to upper case
echo -e "\nString in upper case: ${myVar^^}"

 
#How to convert string to lower case
echo -e "\nString in lower case: ${myVar,,}"


#How to replace a string (replace is case sensitive)
newVar=${myVar/Buddy/World}
echo -e "\nString after replace Buddy by World: $newVar"


#How to slice a string
echo -e "\n"Here is slice of a string: ${myVar:4:5}
