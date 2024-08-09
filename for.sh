#!/bin/bash

user=$(id -u)
time=$(date +%F-%H-%M-%S )
logfile=$(echo $0|cut -d "." -f1)

if [ $user -ne 0 ]
then
    echo "you are not a root user"
    exit 1
else
    echo "you are a root user and proceeding"
fi

for i in $@
do 
  yum list installed |grep $i
  if [ $? -ne 0 ] 
  then 
     echo "$i package is not installed, now installing"
     yum install $i -y &>>$logfile
     if [ $? -ne 0 ]
     then
        echo "$i package is not installed check logs at $logfile"
    else
        echo "$i package is installed"
    fi
    fi
else
   echo "$i package is already installed"
fi
done