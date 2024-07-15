#!/bin/bash

dog=$(id -u)
DATE=$(date +%F-%H-%M-%S)
SCRIPT=$(echo $0 | cut -d "." -f2) #"echo $0" means current name of the script and when we run the command 
                                   #inside the script we have to give inside (...)
LOGS=/tmp/$SCRIPT-$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[0m"

echo "Script started executing at: $TIMESTAMP"
valid() {   

    if [ $1 -ne 0 ]   
    then
        echo -e " $2 $R Failure $N" 
        exit 1
    else
        echo -e "$2  $G is Success $N"
    fi
         

}

if [ $dog -ne 0 ]
then
    echo "it is not an super user or root user"
    exit 1
fi
  

mysql_secure_installation --set-root-pass ExpenseApp@1 &>>$LOGS
valid $? "Setting up root password"

