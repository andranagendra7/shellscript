#!/bin/bash

text=$1
 
cat  /proc/version | grep $text 

res=$?

if [ $res != 0 ]
then
   echo "this is not Redhat family"
else
   echo "this Redhat family"
fi
