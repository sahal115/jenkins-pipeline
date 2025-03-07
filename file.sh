#!/bin/bash


    #Author : Utrains
    #Date : 01-Nov-2021
    
## ---------- If statement and file   -----------------

# -----  check if the file exist with the filename ------------

FILE-NAME=linux
if [ -f ${FILE-NAME} ]   
    then 
    echo "file exist"
 else 
 touch success   
fi

