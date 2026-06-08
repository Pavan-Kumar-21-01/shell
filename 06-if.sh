#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo " You must have sudo access to execute the script"
fi