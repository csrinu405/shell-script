#!/bin/bash

user=$(id -u)
if [ $user -ne 0 ]
then
    echo "you are normal user"
    exit 1
else
    echo "you are root user"
fi
dnf install mysql-server -y
 