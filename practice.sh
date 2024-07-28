#!/bin/bash

Sudheer=$(id -u)
date=$(date +%F-%H-%M-%S)
vinni=$(echo $0| cut -d "." -f2 )
logs=/tmp/$date-$vinni.log

sexy()
{
    if [ $1 -ne 0 ]
    then
        echo "$2 Some thing error please check the installation"
    else
        echo "$2 It was installed"
    fi
}
if [ $Sudheer -ne 0 ]
then
    echo "you are not an super user"
    exit 1
fi

dnf install nodesjs -y >>$logs
sexy $? "nodejs"

dnf install nginx -y >>$logs
sexy $? "nginx"
