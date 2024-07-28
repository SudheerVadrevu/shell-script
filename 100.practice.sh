#!/bin/bash

Sudheer=$(id -u)
date=$(date +%F-%H-%M-%S)
vinni=$(echo $0| cut -d "." -f2 )
logs=/tmp/$date-$vinni.log

R="\e[31m"
G="\e[32m"
N="\e[0m"

echo "Script started executing at: $TIMESTAMP"

sexy()
{
    if [ $1 -ne 0 ]
    then
        echo "$2 $G Some thing error please check the installation"
    else
        echo "$2 It was installed"
    fi
}
if [ $Sudheer -ne 0 ]
then
    echo "you are not an super user"
    exit 1
fi

dnf install nodejs -y >>$logs
sexy $? "nodejs"

dnf install nginx -y >>$logs
sexy $? "nginx"
