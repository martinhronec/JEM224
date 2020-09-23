#!bin/bash

cd ..
git init folder
cd folder

echo "Content." > file
git add .
git commit . -m "Adding file"
echo "2nd file." >file2
git add .
git commit . -m "Adding the 2nd file."

git-graph -f png

# git revert expects a commit ref passed - HEAD will revert the last commit
git revert HEAD 

git log --oneline --graph --decorate
git-graph -f png
ls
