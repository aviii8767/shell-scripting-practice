#!/bin/bash

#How to store the key values pairs

declare -A myArray
myArray=( [name]=Avishkar [age]=22 [education]=BE )

echo "Name is ${myArray[name]}"
echo "Education is ${myArray[education]}"
