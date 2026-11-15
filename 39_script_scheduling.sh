#!/bin/bashi

date >> schedule.log

#1.For scheduling only one time, use at


#to create a job, run in terminal 
<<comment
at 14:20 #or at 23:00 31 july 2027 #At time you want to run script then enter
bash /home/ec2-user/myscripts/39_script_scheduling.sh #Your command
Ctrl + D #To exit
comment
#when job run successfully you will see scedule.log file created.


#atq to check scheduled job, if job alreay done then it do not show
#atrm <id> to remove the schedule




#2.For repetative, like every friday/every day

#corntab -e This will open editor to add new job
#16 03 * * * cd /home/ec2-user/myscripts && ./39_script_sccheduling.sh #your cmd

<<comment
Here, 1st star means: minutes (0-59)
2nd star: hour (0-23)
3rd star: day of month (1-31)
4th star: month (1-12)
5th star: day of week (0-6) (sunday = 0)
#there is website called crontab guru to see schedule
comment


<<comment
if crontab is not working because the cronie package is not installed by default onyour host like amazon linux do not have so install as follows,
sudo dnf install cronie -y
sudo systemctl enable crond #Enable and start the crond service
sudo systemctl start crond
sudo systemctl status crond #To verify it is running
crontab -l

comment

#To check the existing jobs: crontab -l
#To add new job: crontab -e

