#!/bin/bash

# echo "Please enter your name"

# read -p NAME

# if [ "$NAME" = "elliot" ];
# then
#       echo "Welcome back elliot"
# else
#       echo "Invalid username,Please register your account"
# fi


newdir=$1
newfile="myfirstfile_txt"
sourcepath="/c/Users/user/Bash/shell1"
anotherdir="/c/Users/user/Bash/shell1/if.sh"
aicpa_path="/c/Users/user/Bash/shell/"

echo "my first shell scripting."
echo "mercy loves devops!!!!!"

if [ -d "${newdir}" ]; then
    mkdir ${newdir}
    echo "${newdir} has been created"
else
    echo "${newdir} already exists"
fi

# echo "${newdir} has been created"
# echo "copying using paths"
# cp -r ${sourcepath} ${newdir}
# echo "copying file ${sourcepath} into ${newdir}"

if [ -f "${newfile}" ]; then
    sudo cp -r  ${newfile}  ${newdir}
    echo "the ${newfile} has been copied from source to ${newdir}"
else
    echo "Error: ${newfile} does not exist"
fi

# #!/bin/bash


# newdir=$1
# newfile=$2
# sourcepath="/Users/adewale/Documents/terraform/prom-grafana/premierleague_footy/docker-compose.yml"
# anotherdir="/Users/adewale/Documents/terraform/devops_docker_new"
# aicpa_path="/Users/adewale/Documents/terraform/aicpa-CICDtools"


# echo "my first shell scripting."
# echo "mercy loves devops!!!!!"

# mkdir ${newdir}
# echo "${newdir} has been created"
# cp -r  ${newfile}  ${newdir}
# echo "the ${newfile} has been coppied from source to ${newdir}"

# echo "copying using paths"

# cp -r ${sourcepath} ${newdir}
# echo "copying file ${sourcepath} into ${newdir}"
# mkdir ${anotherdir}
# echo " creating a new directory called ${anotherdir} "
# cp -r ${sourcepath} ${anotherdir}
# echo "copying a folder ${sourcepath} to ${anotherdir} "

# cp -r ${aicpa_path} ${anotherdir}
# echo "copying folder ${aicpa_path} to ${anotherdir}"