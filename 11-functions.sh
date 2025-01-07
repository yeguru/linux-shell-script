#!/bin/bash

userid=$(id -u)

VALIDATE(){
    if [ $? -ne 0 ]
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

if [ $? -ne 0 ]
then
    dnf install lvm -y
    VALIDATE $? "Installing.... lvm"
else
    echo "LVM is already ...INSTALLED"
fi

dnf list installed java

if [ $? -ne 0 ]
then
    dnf install java -y
    VALIDATE $? "Installing.... java"
else
    echo "java is already ...INSTALLED"
fi    

