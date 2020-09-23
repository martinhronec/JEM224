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
echo "Content of the third file." > file3.txt
git add file1.txt
git commit . -m "Add 1st file"
git add file2.txt file3.txt
git commit . -m "Add 2nd and 3rd file"

git-graph -f png

git branch develop

git-graph -f png

cat .git/HEAD

cat refs/heads/master

git status 

git log

git checkout -b iss12

git status

git-graph -f png

echo "Some change to the code, related to the issue #12" >> file1.txt
git add file1.txt
git commit . -m "Add solution to the issue # 12"

git-graph -f png

git checkout master
git status 
git checkout -b hotfix

echo "HOTFIXING!" > file2.txt
git add file2.txt
git commit . -m "Hotfixing the pressing problem."


git-graph -f png

### Merging
git checkout master 
git merge hotfix

git-graph -f png

git branch -d hotfix

# Recursive (three-way merge)
git checkout master
git merge iss12

git-graph -f png

git branch -d iss12


