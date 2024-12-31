#!/bin/bash


echo "All the variables:$@"
echo "No of variables:$#"
echo "Script name:$0"
echo "Present working directory:$PWD"
echo "Home directory of the current user:$HOME"
echo "Which user is running the script:$USER"
echo "Process id of the current script:$$"
sleep 60 &
echo "Process id of the last command in background:$!"