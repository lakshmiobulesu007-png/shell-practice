#!/bin/bash

LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME-$TIMESTAMP.log"
mkdir -p $LOGS_FOLDER

USERID=$(id -u)
CHECK_ROOT () {
    if [ $USERID -ne 0 ]
    then 
        echo "plese run this sript root priveleges"
    fi

}
 
VALIDATE () {
    if [ $1 -ne 0 ]
    then 
        echo -e " $2 is .. $R FAILUR $N"
        exit 1
    else
        echo -e " $2 is .. $G SUCCESS $N"
    fi

}

CHECK_ROOT

for packages in $@ # $@ refer to all arguments pass to it
do 
    dnf list installed $package
    if [ $? -ne 0 ]
    then
        echo "$package is not installed plece check it"
        dnf install $package -y
        VALIDATE $? "installing $package"

    else
        echo " $package is allrady installed nothing to do.."
    fi
done