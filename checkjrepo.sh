#!/bin/bash

filename='jenkins.repo'

echo "$filename"

check="find / -type f -iname $filename"
echo "$check"

#if [ $? -eq 0 ];
#then
#     echo "this file exists"
#else
#     echo "this file not exists"
#fi
