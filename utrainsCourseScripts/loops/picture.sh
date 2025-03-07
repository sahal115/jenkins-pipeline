#!/bin/bash

    #Author : Utrains
    #Date : 01-Nov-2021

    #----------------------- Description ------------------------------
    # In this simple example we will see how to rename each file with .txt format
    
PICTURES=$(ls *.jpg)
NEW="new"
for PICTURE in $PICTURES
do
  echo "Renaming $PICTURE to new-$PICTURE"
  mv $PICTURE $NEW-$PICTURE
done
