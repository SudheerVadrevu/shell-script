# !/bin/bash

dog=$(id -u)

valid() {     #ikkada 'valid' anedhi function name and '()'' ki function name madhya gap vundakodadu.same
# manam inthaka mundu variable run chese time lo variable values ala ichamo alage ikkada kuda functions ki input values ivachu
echo "installation completed or not $1"
echo "what are you displaying  $2"

}

if [ $dog -ne 0 ]
then
    echo "it is not an super user or root user"
    exit 1
fi
  
dnf install mysql -y
valid $? "Installing mysql"  # valid function ki 1st input ---$? ante mundu ichina command work ayindha ledha ani
# valid function ki second variable --"Installing mysql" 

dnf install git -y
valid $? "Installing git" #same 1st variable $? and Second variable "Installing git"
