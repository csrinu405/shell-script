#!/bin/bash

user=$(id -u)
time=$(date +%F-%H-%M-%S)
scriptname=$(echo $0|cut -d "." -f1)
logfile=/tmp/$scriptname-$time.log 
FUN(){
if [ $1 -ne 0 ]
then
    echo "$2 Failure"
    
else
    echo "$2 Success"
fi
}
if [ $user -ne 0 ]
then
    echo "you are a normal user"
    exit 1
else
    echo "you are root user"
fi
yum install mysql -y &>>$logfile
FUN $? "Insalling mysql"
echo "========================="
yum install openssh -y &>>$logfile
FUN $? "Installing openssh"
