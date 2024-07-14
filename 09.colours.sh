#!/bin/bash

dog=$(id -u)
DATE=$(date +%F-%H-%M-%S)
SCRIPT=$(echo $0 | cut -d "." -f2) #"echo $0" means current name of the script and when we run the command 
                                   #inside the script we have to give inside (...)
LOGS=/tmp/$SCRIPT-$DATE.log

#R="\e[31m"
#G="\e[32m"
#N="\e[0m"

echo "Script started executing at: $TIMESTAMP"
valid() {   

    if [ $1 -ne 0 ]   
    then
        echo " $2  Failure " 
        exit 1
    else
        echo "$2 is Success "
    fi
         

}

if [ $dog -ne 0 ]
then
    echo "it is not an super user or root user"
    exit 1
fi
  
dnf install mysql -y &>>$LOGS
valid $? "Installing mysql" 

dnf install git -y &>>$LOGS
valid $? "Installing git" 

dnf install rubbbb -y &>>$LOGS
valid $? "Installing git" 
