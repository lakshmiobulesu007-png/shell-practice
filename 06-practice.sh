#!/bin/bash


#indext start from 0, size is 3
FRUITS ("apple" "kiwi" "orange") Array

echo "first fruit is: ${FRUIT[0]}"
echo "second fruit is: ${FRUIT[1]}"
echo "thard fruit is: ${FRUIT[2]}"

echo "total fruit are: ${FRUIT[@]}"