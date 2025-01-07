#!/bin/bash

userid=$(id -u)

VALIDATE(){
    if [ $1 ne 0 ]
    then
        echo "$2 ...Failure"
        exit 127
    else
        echo "$2 ...Success"
    fi        
}

if [ $userid ne 0 ]
then
    echo "ERROR: Please execute the script with the root/sudo privileges"
    exit 127
fi

dnf list installed  zip 

if [ $? ne 0 ]
then
    dnf install zip -y
    VALIDATE $? "Installing.... zip"
else
    echo "zip is already ...INSTALLED"
fi

dnf list installed git

if [ $? ne 0 ]
then
    dnf insatll git -y
    VALIDATE $? "Installing.... Git"
else
    echo "Git is already ...INSTALLED"
fi    

