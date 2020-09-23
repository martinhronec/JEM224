#!/bin/bash

# echo returns whatever you type at the shell prompt
echo "What does echo mean anyways?"

# clear clears the terminal
clear

# pwd prints the current working directory
pwd


# ls lists the contents of a directory
ls
ls -a 

mkdir folder

# cd changes directory
cd folder
cd .. 
cd folder

touch file.txt

rm file.txt
touch file.txt

cd .. 
rm folder -r * 

mkdir folder & cd folder

echo "Git is awesome." > file.txt

# means concatenate, which reads a file and outputs its content
cat file.txt

cd .. 
rm folder -r * 

