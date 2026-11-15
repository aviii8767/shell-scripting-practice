#!/bin/bash

#For Loop
for i in 11 12 13 14 15 16 17 18 19 20
do 
	echo "Number is $i"
	sleep 4s
done

#as this script taking so much time and we cant use terminal while

#so best option is to run this script in background using
#nohup ./38_running_scriptin_background &

#this & allows to use terminal if not using we cant access terminal while script running in background

#but for this, script should have execute (x) access: chmod +x 38_running_scriptin_background

#this will append the script output to nohup.out

#to access script output use
#cat nohup.out


