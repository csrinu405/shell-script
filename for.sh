#!/bin/bash

user=$(id -u)
time=$(date +%F-%H-%M-%S )
logfile=$(echo $0|cut -d "." -f1)

if [ $user -ne 0 ]
then
    echo "you are not a root user"
else
    echo "you are a root user and proceeding"
fi

for i in $@
do 
  yum list installed |grep $i
  if [ $? -ne 0 ] 
  then 
     echo "package is not installed"
     yum install $i -y &>>$logfile
     if [ $? -ne 0 ]
     then
        echo "package is not installed check logs at $logfile"
    else
        echo "package is installed"
    fi
else
   echo "package is installed"
fi
done