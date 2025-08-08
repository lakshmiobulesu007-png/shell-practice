#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"

CHECK_ROOT () {

    if [ $USERD -ne 0 ]
    then
        echo "plese run this script root priveleges"
        exit 1
    fi
}

VALIDATE () {
    if [ $1 -ne 0 ]
    then
        echo -e "$2 is.. $R FAILED $N"
        exit 1
    else
        echo -e "$2 is .. $G SUCCESS $N"
    fi
}
CHECK_ROOT


for pakeges in $@  # $@ refer to all arguments pass to it
do
    dnf list installed $pakeges
    if [ $? -ne 0 ]
    then
        echo "$pakeges is not installed, plese check it"
        dnf install $pakeges -y
        VALIDATE $? "instaling $pakeges"
    else 
        echo " $pakeges is allredy instaling"
    fi
done