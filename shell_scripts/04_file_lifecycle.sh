#!bin/bash

cd .. 
git init folder
cd folder

git status

echo "hello world!" > file.txt

git status

git add file.txt

git status 
git diff --staged

# git commit - will prompt you for the 
git commit file.txt -m "Yey. The first commit message." 

git status

git log -p

git-graph -n btc -f png

echo "another line." >> file.txt

git add file.txt
git commit file.txt -m "Adding another line."

git status

git log

git-graph -n btc -f png


echo "3rd line" >> file.txt

git add file.txt
git commit file.txt -m "Adding 3rd line."

git status

git log

git-graph -n btc -f png
