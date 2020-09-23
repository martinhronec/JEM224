#!/bin/bash

# create folder named as the first argument after the shell script
# FOLDER_NAME=$1

cd ..
git init folder
cd folder 

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

# object database now contains both versions of this new file 
ls .git/objects

rm test.txt

# list all objects in the git database
git cat-file --batch-check --batch-all-objects

# retrieve contents of the version 1 and 2 of the text file from the database
# git cat-file -p <hash_1> > test.txt
# git cat-file -p <hash_2> > test.txt

# Removing files
git add test.txt
git commit test.txt -m "Recreating test.txt file."

git rm -n test.txt 
git rm test.txt
git commit . -m "Remove test.txt finally."

# Moving files
echo "Content." > file.md
git add file.md
git commit file.md -m "Adding some test file."

git mv file.md renamed_file.md
git status
git commit . -m "Renaming file.md"
