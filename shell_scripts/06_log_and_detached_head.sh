#!bin/bash

cd ..
git init folder
cd folder

touch file1.txt file2.txt file3.txt
echo "Content of the first file." > file1.txt
echo "Content of the second file." > file2.txt
echo "Content of the third file." > file3.txt
git add file1.txt
git commit . -m "Add 1st file"
git add file2.txt
git commit . -m "Add 2nd file"
git add file3.txt
git commit . -m "Add 3rd file"

git log --all --graph --decorate

git-graph -f png

# now we will be in the detached HEAD state
FIRST_COMMIT_ID=$(git rev-parse HEAD~1)
git checkout $FIRST_COMMIT_ID

git-graph -f png

# make some commits in the detached HEAD state
echo "Life is change!" >> file1.txt
git add file1.txt
git commit . -m "Changing the 1st file"

git-graph -f png

git checkout master
git-graph -f png
