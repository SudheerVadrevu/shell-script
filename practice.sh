#!/bin/bash

Sudheer=$(id -u)
sexy()
{
if [ $1 -ne 0 ]
then
    echo "it was not installed"
else
    echo " $2 it was installed"
fi
}
if [ $Sudheer -ne 0 ]
then
    echo "you are not an super user"
    exit 1
fi

dnf install nodesjs -y
sexy $? "nodejs"

dnf install nginx -y
sexy $? "nginx"
