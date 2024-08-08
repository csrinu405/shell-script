#!/bin/bash

user=$(id -u)
fun=(){
if [ $1 -eq 0 ]
then
    echo "$2 success"
else
    echo "$2 Failure"
fi
}


if [ $user -ne 0 ]
then
    echo "you are a normal user"
    exit 1
else
    echo "you are root user"
fi

yum install mysql -y

fun $? "Insalling mysql"
echo "========================="

yum install openssh -y

fun $? "Installing openssh"
