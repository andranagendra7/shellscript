#!/bin/bash

file="/etc/init.d/jenkins"

if [ -e $file ];
then
    systemctl status $1
    res=$?
    echo "$res"
    if [ $res -ne 0 ];
    then 
       /etc/init.d/jenkins start
       #echo "jenkins stopped"
    fi

fi
