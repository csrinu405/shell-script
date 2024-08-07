#!/bin/bash

names=("seenu" "swathi" "parthiv")

echo "my son name is" ${names[2]}
echo "my wife name is" ${names[1]}
echo "my name is" ${names[0]}
echo "my family name is" ${names[2][1][0]}