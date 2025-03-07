#!/bin/bash
    
    #Author : Utrains
    #Date : 01-Nov-2021

    #----------------------- Description ------------------------------
    # This script asks the user to choose an answer between (yes or no).
    # an ANSWER variable is created to contain the user's choice. 
    #then a test (case)is carried out to display this choice in the prompt


read -p "Enter the answer in Y/N: " ANSWER
case "$ANSWER" in
  [yY] | [yY][eE][sS])
    echo "The Answer is Yes :)"
    ;;
  [nN] | [nN][oO])
    echo "The Answer is No :("
    ;;
  *)
    echo "Invalid Answer :/"
    ;;
esac