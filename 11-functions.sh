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

dnf list installed  lvm  

if [ $? ne 0 ]

then
    dnf install lvm -y
    VALIDATE $? "Installing.... zip"
else
    echo "zip is already ...INSTALLED"
fi

dnf list installed java

if [ $? ne 0 ]

then
    dnf insatll java -y
    VALIDATE $? "Installing.... Git"
else
    echo "Git is already ...INSTALLED"
fi    

