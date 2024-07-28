#!/bin/bash

Sudheer=$(id -u)
sexy()
{
    echo "exit status enti $1 "
    echo "installed  $2"
}
if [ $Sudheer -ne 0 ]
then
    echo "you are not an super user"
    exit 1
fi

dnf install nodejs -y
sexy $? "nodejs"

dnf install nginx -y
sexy $? "nginx"
