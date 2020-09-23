#!bin/bash
FOLDER_NAME="folder"

cd ..

if [ -d "$FOLDER_NAME" ]; then
    rm -r -f $FOLDER_NAME
fi

git init $FOLDER_NAME
cd $FOLDER_NAME

touch file1.txt file2.txt file3.txt
echo "Content of the first file." > file1.txt
echo "Content of the second file." > file2.txt
echo "Content of the third file." > file3.txt
git add file1.txt
git commit . -m "Add 1st file"
git add file2.txt
git commit . -m "Add 2nd file"
git add file3.txt
#git commit . -m "Add 3rd file"

git log --all --graph --decorate

## --hard option
git status
git reset --hard 
git status
# file3 is empty, even though it was added before
cat file3.txt

## --mixed option 
# reintroduce changes to the 3rd file
echo "Content of the third file." > file3.txt
git add file3.txt

git status
git reset --mixed
git status

## --soft option


