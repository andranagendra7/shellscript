#!/bin/bash

systemctl status $1

if [ $? -ne 0  ];
then
   systemctl start $1
else
    echo "this service already runnig"
fi

