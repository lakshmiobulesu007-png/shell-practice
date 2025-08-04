#!/bin/bash


#indext start from 0 , size is 3
FRUITS=("APPLE" "KIWI" "ORANGE") #Array

echo "first fruit is: ${FRUITS[1]}"
echo "second fruit is: ${FRUITS[2]}"
echo "thard fruit is: ${FRUITS[3]}"

echo "total fruit are: ${FRUITS[@]}"