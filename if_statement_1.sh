#!/bin/bash


    #Author : Utrains
    #Date : 01-Nov-2021
    
## ---------- If statement allow you to check specific condition  -----------------

# ------You can use tabulation ti indent your code for better visibility ------------
yum install wget -y 
if [$? -eq 0]   # --> this line check if the previous command work well
    then 
    echo "wget installed successfully"
else
    echo "wget did not install"
fi

yum install curl -y 
yum install zip -y 
yum install vim -y 