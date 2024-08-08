#!/bin/bash

user=$(id -u)



if ( user -eq 0 )
then
    echo "you are a root user"
else
    echo "you are normal user"
fi