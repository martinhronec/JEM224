#!/bin/bash


cd ..

git clone "https://github.com/martinhronec/folder.git" cloned_folder
cd cloned_folder

## pushing
git checkout -b develop 

echo "Content of the first file." > file1.txt
git add file1.txt
git commit . -m "Add 1st file"

git push origin develop

## tracking branches


# create branch on github and make some changes in it
git checkout -b feature origin/feature

git-graph -f png
