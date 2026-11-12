#!/bin/bash

#UID --> user id of the user logged in 

#Checking if the user is root or not
#As we know root user have UID = 0

if [[ $UID -eq 0 ]]
then
	echo "User is root"
else 
	echo "User is not a root"
fi


#Use sudo su to switch user to root in ec2 inst
#su - ec2-user -> to switch to normal user
