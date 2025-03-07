#!/bin/bash

    #Author : Utrains
    #Date : 01-Nov-2021

    #----------------------- Description ------------------------------
    # this script asks for the user's name and then asks if their name is correct. 
    # If it responds with No, the program uses the While Loop to ask for its name again. 
    # if it answers yes, the program exits the while loop

while [ "$CORRECT" != y || "$CORRECT" != Y]
do
  read -p "Enter your username: " USERNAME
  read -p "Is $USERNAME correct Y/N? " CORRECT
done