#!/bin/bash

echo "all variables:" $@
echo "num of variables passed" $#
echo "script name" $0
echo "current working directory" $PWD
echo "current working directory" $HOME
echo "current user" $USER
echo "server name" : $HOSTNAME
echo "process id of current shell" $$
sleep 60 $
echo "process of last background" $!