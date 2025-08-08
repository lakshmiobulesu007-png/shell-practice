#!/bin/bash 

NUMBER=$1

if [ $NUMBER -gt -20 ] # gt,lt,le,ge,ne,
then
    echo " given number: $NUMBER is getter then 20"
else
    echo " given number: $NUMBER is less then 20"
fi