#!/bin/bash


    #Author : Utrains
    #Date : 16-Feb-2022
    
## ---------- Example of the solution Practice/Program 4  -----------------

# -----  Write a function in shell script to take a path as arguement and print the number of files/directories in that path.   ------------

function fileCount () {
    LOC=$1
    ls $LOC > outText.txt
    NUM_FILES=$(wc -w outText.txt)
    
    echo $NUM_FILES
}

# Call the preview function with the /etc directory
fileCount /etc 