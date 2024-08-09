#!/bin/bash

user=$(id -u)
time=$(date +%F-%H-%M-%S)
logfile=$(echo $0|cut -d "." -f1)
g="\e[0;92m"
n="\e[0m"
status(){
if [ $1 -ne 0 ]
then
    echo "$2 not Installed"
else
    echo -e "$2 package is $g installed $n"
fi

}

if [ $user -ne 0 ]
then
    echo "you need to root to proceed"
    exit 5
else
    echo "you are root user and Authorized to execute script"
fi

yum install vsftpd -y &>>$logfile
status $? vsftpd

yum install ftp -y &>>$logfile
status $? ftp