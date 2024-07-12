# !/bin/bash

dog=$(id -u)
if [ $dog -ne 0 ]
then
    echo "it is not an super user or root user"
fi
  
dnf install mysql -y

echo "this is alo running"