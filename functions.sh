#!/bin/bash

user=$(id -u)



if [ $user -ne 0 ]
then
    echo "you are a normal user"
    exit 1
else
    echo "you are root user"
fi
yum install mysql -y

yum install openssh -y

echo $?