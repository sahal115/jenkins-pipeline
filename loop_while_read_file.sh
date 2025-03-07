#!/bin/bash

    #Author : Utrains
    #Date : 01-Nov-2021

    #----------------------- Description ------------------------------
    # while loop, to read and display the content of the file /etc/passwd line by line....

LINE=1

echo " |--------------------------------------------------------------------------------------"
while read CURRENT_LINE
do
  echo " | ${LINE}: $CURRENT_LINE"
  ((LINE++))
done < /etc/passwd

echo " |--------------------------------------------------------------------------------------"
