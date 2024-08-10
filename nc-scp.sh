#!/bin/bash
mv -f file1 file1.old
read -p "Enter server name:" Servername
ssh $Servername "cat /var/log/messages |grep dhclient > /tmp/file1"
scp $Servername:/tmp/file1 . 1>/dev/null
if [ $? -ne 0 ]
then
    echo "scp file not copied properly"
    exit1
else
   echo "completed"
 fi
