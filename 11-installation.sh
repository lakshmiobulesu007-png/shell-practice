#!/bin/bash

USERID=$(id -u)
#echo "user ID is: $USERID"

if [ $USERID -ne 0 ]
then
    echo "plese run this sript root priviligation"
    exit 1
fi


dnf list installad git # jest checkong gether installed or not

if [ $? -ne 0 ]
then
    echo "git is not installed , going to install it"
    dnf install git -y
    if [ $? -ne 0 ]
    then
        echo "git installation is not success..chick it"
        exit 1
    else
        echo " git installation success"
    fi
else
    echo "git is allrady installed, nothing to do"
fi

dnf list installed mysql

if [ $? -ne 0 ]
then 
    echo " mysql is not installed, going to install it"
    dnf install mysql -y
    if [ $? -ne 0 ]
    then
        echo " mysql installation is not success, plece chit it"
        exit 1
    else
        echo "mysql installation success"
    fi
else
    echo "mysql allrady installed, nothing to do"
fi
