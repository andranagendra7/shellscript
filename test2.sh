#!/bin/bash

file=$1

#cmmd = "find -iname $file"

if [ -f $file ];
then
 res=$?
 echo "$res"
 echo "exists"
else
 #echo "not exists"
 res2=$?
 echo "$res2"
 echo "not exists"
fi

#res=$?

#echo "$res"

