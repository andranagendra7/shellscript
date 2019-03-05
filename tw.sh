#!/bin/bash

text='hello'

while [ $text != 'Hello' ]
do

echo "plese type somthing"

read text

echo "you typed:$text"

done

