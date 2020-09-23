#!/bin/bash

FOLDER_NAME="folder"

cd ..

if [ -d "$FOLDER_NAME" ]; then
    rm -r -f $FOLDER_NAME
fi

git init $FOLDER_NAME
cd $FOLDER_NAME

echo "Content of the first file." > file1.txt
echo "Content of the second file." > file2.txt
git add file1.txt
git commit . -m "Add 1st file"
git add file2.txt 
git commit . -m "Add 2nd file"

git checkout -b feature
echo "Feature implementation." > file1.txt
git add file1.txt
git commit . -m "Add feature."

git checkout master 
echo "Changing the same line that feature changes correspond to." > file1.txt
git add file1.txt
git commit . -m "Refactoring main code." 

git-graph -f png -n clhrdst

git merge feature

~
git status 

#vim file1.txt
# git log --graph
# git-graph -f png -n clhrds


### stashing
# echo "some changes" >> file1.txt
# git add file1.txt 
# echo "other changes" >> file2.txt
# git status
# git stash
# git stash list
# git status
# cat file1.txt
# git stash apply stash@{0}
# git stash drop stash@{0}


