#!/bin/bash

# newdir=adduser
# newfile="test.sh"
# sourcepath="C:\Users\user\Bash\bashscripting\shell1"
# anotherdir="C:\Users\user\Bash\bashscripting\shell2"
# aicpa_path="C:\Users\user\Bash\bashscripting\shell"
C:\Users\user\Bash\bashscripting
newdir=$1
newfile=$2
sourcepath=$3
anotherdir=$4
aicpa_path=$5

# test for function

function newdir() {
    if [ -d "$newdir" ]; then
        echo "Directory '$newdir' exists"
    else 
        echo "Directory '$newdir' does not exist"
    fi
}

function sourcepath() {
    if [ -e "$sourcepath" ]; then
        echo "File '$sourcepath' exists"
    else 
        echo "File '$sourcepath' does not exist"
    fi
}

function newfile() {
    if [ -e "$newfile" ]; then
        echo "File '$newfile' exists"
    else 
        echo "File '$newfile' does not exist"
    fi
}

# newdir
# sourcepath
# newfile


echo "Welcome!"
echo -e "What function will you like to run?Enter 1 or 2.\\n1.interviewer \\n2.command line"
read the_result
function interviewer() {
	echo 'This is interviewer function'
    newfile
}

function commandLine() {
	echo 'this is command line function'
}
if [ $the_result == "1" ]; then
	interviewer
elif [ $the_result == "2" ]; then
	commandLine
else
	echo 'Wrong Choice'
fi


TS=$(date +"%m%d%y%H%M%S")