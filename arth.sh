#!/bin/bash

a=10
b=20

c=`expr 10  + 20`
d=`expr $b  - $a` 
e=`expr $b \* $a`
f=`expr $b / $a`
g=`expr $b % $a`
echo $c

echo $d
echo $e
echo $f
echo $g
i=$f

echo $i
