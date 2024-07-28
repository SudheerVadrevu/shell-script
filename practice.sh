#!/bin/bash

Sudheer=$(id -u)
echo $Sudheer
if [ $Sudheer -ne 0 ]
then
    echo "you are not an super user"
else
    echo "you are an super user"
fi

dnf install git
echo "Installing the git into the server"