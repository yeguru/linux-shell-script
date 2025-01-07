#!/bin/bash

userid=$(id -u)

if[ $userid -ne 0 ]
then
    echo ("ERROR ::The user should have the sudo access to execute the script")
    exit 127
fi

dnf install mysql -y

if[ $? -ne 0 ]
then
    echo ("The installation of mysql is Failed")
    exit 127
else
    echo ("The installation of mysql is sucess")
fi        

dnf install git -y

if[ $? -ne 0 ]
then
    echo ("The installation of git is Failed")
    exit 127
else
    echo ("The installation of git is sucess")
fi 
