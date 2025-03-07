#!/bin/bash

    #Author : Utrains
    #Date : 01-Nov-2021

    #----------------------- Description ------------------------------
    # We have 2 functions (currentTime and utrainGreetings). currentTime allows to retrieve the system time.
    # utrainGreeting allows you to retrieve the user logged into the machine and then pass the welcome greetings from Utrains. 
    # We see that the currentTime function is called in the utrainGreetings function. which is great
    
function utrainGreetings() {
  USER=$(whoami)
  echo "-----------------------------------------------"
  echo "| Welcome ${USER} for Utrains Scripting Course"

  currentTime #--------- Call of a function in another
}

function currentTime() {
  echo "| Your Local Time Is: $(date +%r)"
  echo "-----------------------------------------------"
}

utrainGreetings  #------ call of the final function for our script
