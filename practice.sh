#!/bin/bash

Sudheer=$(id -u)
echo $Sudheer
if [ $Sudheer -ne 0 ]
then
    echo "you are not an super user"
else
    echo "you are an super user"
fi

dnf install nodejs -y
echo "Installing the ngnix into the server"