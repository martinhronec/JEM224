#!/bin/bash

# create folder named as the first argument after the shell script
# FOLDER_NAME=$1

FOLDER_NAME="folder"

cd ..

if [ -d "$FOLDER_NAME" ]; then
    rm -r $FOLDER_NAME
fi

mkdir $FOLDER_NAME

# move into the created folder and initialize it as a Git repository
cd $FOLDER_NAME
ls

# initialize git repository
git init

# list contents of the repository with argument -a to show the hidden files
ls -a

# show contents of .git folder
ls .git

# `git help` if you need help :) 


