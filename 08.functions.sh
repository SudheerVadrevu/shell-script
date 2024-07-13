# !/bin/bash

dog=$(id -u)

valid() {   
    if [ $1 -ne 0 ]   # ippudu $1 ante anti? $1 implies to the below 'valid function' 1st value or input 
                       #adhe $? . So $? means 0 . 0 means sucess so now here if statement if $1 is not
                       # equal to 0 then it goes into if statement otherwise continue with else.if not
                       # zero then it will goes into if statement and print $2 that means "installing sql"
                       # it will print "installing sql Failure"
    then
        echo " $2  Failure"
    else
        echo "$2 is Sucess "
    fi
         

}

if [ $dog -ne 0 ]
then
    echo "it is not an super user or root user"
    exit 1
fi
  
dnf install mysql -y
valid $? "Installing mysql" 

dnf install git -y
valid $? "Installing git" 
