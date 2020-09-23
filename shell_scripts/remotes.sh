#!bin/bash
FOLDER_NAME="folder"

cd ..

if [ -d "$FOLDER_NAME" ]; then
    rm -r -f $FOLDER_NAME
fi

git init $FOLDER_NAME
cd $FOLDER_NAME

# remotes
git remote
git remote -v
git remote add origin "https://github.com/martinhronec/folder.git"
echo "content" > file.txt
git add file.txt
git commit . -m "Commit message"
git push --set-upstream origin master
# alternative: git push -u origin master

git remote -v 
git-graph
git fetch origin
git remote rename origin bigbang
git-graph
git remote rename bigbang origin

# Cloning alternative
cd ..
git clone "https://github.com/martinhronec/folder.git" folder_cloned
cd folder_cloned
git remote -v 
git-graph -f png








