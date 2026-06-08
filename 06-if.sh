#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo " You must have sudo access to execute the script"
    exit 1
fi

yum install git -y

if [$? -ne 0 ]
then
    echo "Installing git failed"
    exit 1
else
    echo "Installing success"
fi