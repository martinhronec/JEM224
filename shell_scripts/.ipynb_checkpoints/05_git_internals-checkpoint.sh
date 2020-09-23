#!/bin/bash

# create folder named as the first argument after the shell script
FOLDER_NAME=$1

git init $FOLDER_NAME
cd $FOLDER_NAME

ls .git

# 
echo "test content" | git hash-object -w --stdin


# see how Git has stored your data 
ls .git/objects 

# explore the contents
# git cat-file -p <hash>

echo 'version 1' > test.txt
git hash-object -w test.txt

# write some new content to the file and save it again 
echo 'version 2' > test.txt
git hash-object -w test.txt

