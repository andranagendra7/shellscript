#!/bin/bash

text=$1
 
cat  /proc/version | grep $text 

res=$?

if [ $res != 0 ]
then
   echo "this is not Redhat family"
   apt-get update -y
   apt-get install -y apache2
else
   #echo "this Redhat family"
   check="httpd -v"
   $check
   res=$?
   if [ $res -ne 0 ];
   then
      yum install -y httpd
      file="/etc/init.d/httpd"
      if [ -e $file ];
      then
         /etc/init.d/httpd start
      else
         echo "this file not exist"
      fi
   fi
fi
