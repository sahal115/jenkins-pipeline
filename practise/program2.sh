#!/bin/bash


    #Author : Utrains
    #Date : 16-Feb-2022
    
## ---------- Example of the solution Practice/Program 2   -----------------

# -----  This script will take as parameter ($1) as absolute path directory. 
#        if this directory does not exist, it is created and then output with an output code 1. 
#        if this directory exists a message is displayed on screen, then the output code is 0    ------------

DIR_NAME="$1" #variable that contain the parameter (file directory)

if [ -e $DIR_NAME ]
then
    echo "The given file/directory exists!"
    exit 0
fi

echo "The given path to directory does not exists!"
mkdir $DIR_NAME
echo "Directory created!"
exit 1