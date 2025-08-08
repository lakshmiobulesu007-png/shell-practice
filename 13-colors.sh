#!/bin/bash


USERID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"


CHECK_ROOT ( ){
    if [ $USERID -ne 0 ]
    then
        echo " plese run this scrit with root priveleges"
        exit 1
    fi

}

VALIDATE () {

    if [ $1 -ne 0 ]
    then
        echo "$2 is.. $R FAILED $N"
        exit 1
    else
        echo "$2 is .. $G SUCCESS $N"
    fi
}

CHECK_ROOT

dnf list installed git
if [ $? -ne 0 ]
then
    echo " git is not installed, plese check it.."
    dnf install git -y
    VALIDATE $? "instaling git"
else
    echo " git is allrady install"
fi

dnf list installed mysql

if [ $? -ne 0 ]
then
    echo " mysqs is not installed, plese check it .."
    dnf install mysql -y
    VALIDATE $? "installing mysql"
else
    echo " mysql is allrady installed"
fi