#!/bin/bash


#indext start from 0, size is 3
FRUITS ("apple" "kiwi" "orange") Array

echo "first fruit is: ${FRUIT[0]}"
echo "second fruit is: ${FRUIT[3]}"
echo "thard fruit is: ${FRUIT[3]}"

echo "total fruit are: ${FRUIT[@]}"