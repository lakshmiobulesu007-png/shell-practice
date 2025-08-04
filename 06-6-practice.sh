#!/bin/bash


#indext start from 1, size is 3
FRUITS ("apple" "kiwi" "orange") #Array

echo "first fruit is: ${FRUITS[0]}"
echo "second fruit is: ${FRUITS[1]}"
echo "thard fruit is: ${FRUITS[2]}"

echo "total fruit are: ${FRUITS[@]}"