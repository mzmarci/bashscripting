#!/bin/bash

# newdir=adduser
# newfile="test.sh"
# sourcepath="/c/Users/user/Bash/shell1"
# anotherdir="/c/Users/user/Bash/shell2"
# aicpa_path="/c/Users/user/Bash/shell"


echo $1
echo $2 


newdir=$1
newfile=$2
sourcepath=$3
anotherdir=$4
aicpa_path=$5

echo "my first shell scripting."
echo "mercy loves devops!!!!!"

# if [ ! -d "${newdir}" ]; then
#     mkdir "${newdir}"
#     echo "${newdir} has been created"
#     cp -r "${newfile}" "${newdir}"
#     echo "the ${newfile} has been copied from source to ${newdir}"
# else
#     echo "${newdir} already exists"
# fi

# echo "copying using paths"

# if [ -d "${sourcepath}" ]; then
#     cp -r "${sourcepath}" "${newdir}"
#     echo "copying file ${sourcepath} into ${newdir}"
# else
#     echo "Source path ${sourcepath} doesn't exist"
# fi

# if [ ! -d "${anotherdir}" ]; then
#     mkdir "${anotherdir}"
#     echo " creating a new directory called ${anotherdir} "
#     cp -r "${sourcepath}" "${anotherdir}"
#     echo "copying a folder ${sourcepath} to ${anotherdir} "
# else
#     echo "${anotherdir} already exists"
# fi

# if [ -d "${aicpa_path}" ]; then
#     cp -r "${aicpa_path}" "${anotherdir}"
#     echo "copying folder ${aicpa_path} to ${anotherdir}"
# else
#     echo "AICPA path ${aicpa_path} doesn't exist"
# fi



