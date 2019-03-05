#!/bin/bash

path="/etc/yum.repos.d/jenkins.repo"

file='/etc/init.d/jenkins'

if [ -e $path ] && [ -e $file ] ;
then
    echo "file exist"
else
    echo "file not exist"
fi
