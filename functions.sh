#!/bin/bash

user=$(id -u)



if [ $user -ne 0 ]
then
    echo "you are a normal user"
else
    echo "you are root user"
fi
yum install mysql -y

if [ $? -eq 0 ]
then 
    echo "package is installed"
else
    echo "package is not installed"
fi
yum install openssh -y

if [ $? -eq 0]
then
    echo "package installed"
else
    echo "package not installed"
fi