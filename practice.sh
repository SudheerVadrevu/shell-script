#!/bin/bash

Sudheer=$(id -u)
echo $Sudheer
if [ $Sudheer -ne 0 ]
then
    echo "you are not an super user"
else
    echo "you are an normal user"
fi

dnf install mysql -y