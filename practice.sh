#!/bin/bash

Sudheer=$(id -u)
echo $Sudheer
if [ $Sudheer -ne 0 ]
then
    echo "you are not an super user"
    exit 1
fi

dnf install nodejs -y
if [ $? -ne 0 ]
then
    echo "Installing the ngnix into the server"
fi
echo " After installing also it was continuing"