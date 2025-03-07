#!/bin/bash


    #Author : Utrains
    #Date : 01-Nov-2021
    
## ---------- loops allow you to perform a repetitive action list   -----------------

# in this example, the list of users will be read from a file. 
# the file should just contain the list of users (u6bt u7bt u8bt u9bt)

for i in ${cat /tmp/username};
do 
    useradd ${i}   # add user
    echo "user $i is successfully created"
    sleep 3
done