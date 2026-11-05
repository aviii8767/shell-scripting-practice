#!/bin/bash

#Script to show how to use variables

a=12
name="Avishkar"
age=22

echo "My Name is $name and Age is $age"


# Variable to store the output of a command
HOSTNAME=$(hostname)
echo "Name of this machine is $HOSTNAME"
