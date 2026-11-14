#!/bin/bash

#example of logging

logger "This is log from ${0}"


#to use logger need access as root user have access
#${0} using to know script file name which is produecing that log
#to check log : sudo less /var/log/messages

