#!/bin/bash

#Generating a random no. between 1 to 6
#RANDOM --> generate random int between 0 and 32767


NO=$(( $RANDOM % 6 + 1 ))
echo "Number is $NO"
