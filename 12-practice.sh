#!/bin/bash

USERID=$(id -u)
CHECK ROOT( ) {
     if [ $USERID -ne 0 ]
    then
        echo " plese run this sript root user privelejetion"
        exit 1
    fi
}

VALIDATE( ) {
    if [ $1 -ne 0 ]
    then
        echo " $2 is ..FAILED"
        exit 1
    else
        echo " $2 is ..SUCCESS"
    fi
}
CHECK ROOT

dnf list installed git 

if [ $1 -ne 0 ]
then 
    echo " git is not installed, plese installed it"
    dnf install git -y
    VALIDATE $? "installing git"
else
    echo " git is allrady installed, nothing to do"
fi

dnf list installed mysql

if [ $1 -ne 0 ]
then
    echo "mysql is not installed, plese installed it"
    dnf install mysql -y
    VALIDATE $? " installed it"
else
    echo " mysql is allrady installed, nothing to do"
fi
