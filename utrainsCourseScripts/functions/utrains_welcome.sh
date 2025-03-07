#!/bin/bash

    #Author : Utrains
    #Date : 01-Nov-2021

    #----------------------- Description ------------------------------
    # Functions are pieces of code that can run independently. they allow us to factorize our scripts and make them maintainable. 
    #the function myFirstFunc () is written then when this function is called all its instructions are executed to display messages on the screen.
    #Notes : When a function is written, we can call it as many times in a script.

function myFirstFunc () {
    echo "---------------------------------------------"
    echo "| Welcome to the first Utrains Function !!!"
    echo "| Shell Scripting Is Fun!"
    echo "--------------------------------------------"
}

myFirstFunc     
#-------- this instruction calls the function which is written above ------------
