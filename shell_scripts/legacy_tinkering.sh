#!/bin/bash

# create folder named as the first argument after the shell script
FOLDER_NAME=$1
mkdir $FOLDER_NAME

# move into the created folder and initialize it as a Git repository
cd $FOLDER_NAME
ls
git init

# list contents of the repository with argument -a to show the hidden files
ls -a

# show contents of .git folder
ls .git

git help

git status

echo "hello world" > hello.txt

git status

git add hello.txt

git commit hello.txt --message='The 1st commit message.'

git log --all --graph --decorate
git log --graph

FIRST_COMMIT_ID=$(git rev-parse HEAD~0)
git cat-file -p $FIRST_COMMIT_ID

git graph --format=pdf

echo "another line" >> hello.txt
cat hello.txt

git add hello.txt
git commit hello.txt -m "Add another line."

# in git log you can see a reference "master", which is a default by conventions pointing to the main version of the code when developing - the most up-to-date version
git log --all --graph --decorate

# HEAD is a special reference - "where you are currently looking right now"

# let's move back in time and see what was different
FIRST_COMMIT_ID=$(git rev-parse HEAD~1)
git checkout $FIRST_COMMIT_ID

# look at the hello.txt
cat hello.txt

# history of commits is the same, but HEAD is pointing elsewhere
git log --all --graph --decorate

git checkout master

# git diff shows you what've changed wrt to the HEAD, which is the last commit
git diff hello.txt

# or what've changed with respect to the specific commit
git diff $FIRST_COMMIT_ID hello.txt


# or what changed between two commits, e.g. 
git diff HEAD $FIRST_COMMIT_ID hello.txt

## BRANCHING
git status 

# create script for better explanation
cat << EOF > animal.py
#!/usr/bin/python
import sys

def default():
    print('Hello')

def main():
    default()

if __name__ == '__main__':
    main()

EOF

chmod 755 animal.py

python animal.py

# create a new branch named cat
git branch cat

git log

git checkout cat

# create new branch and checkout immediately
git checkout -b dog

git merge cat


# remotes
git remote 