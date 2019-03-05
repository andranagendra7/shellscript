#!/bin/bash

name=$1
id=2

echo $id

echo $name

echo $#

echo "command line input:$*"

echo $@

for arg in "$@"; do
echo "$arg"
done 
