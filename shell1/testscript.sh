#!/bin/bash

if [ -d /c/Users/user/Bash/shell1 ];
then
     echo "Yes it exist"
else 
     echo "The file does not exist"
fi


#!/bin/bash


newdir="devopsnew"
newfile="myfirstfile_txt-ew"
sourcepath="/Users/adewale/Documents/terraform/prom-grafana/premierleague_footy/docker-compose.yml"
anotherdir="/Users/adewale/Documents/terraform/devops_docker_new"
aicpa_path="/Users/adewale/Documents/terraform/aicpa-CICDtools"


echo "my first shell scripting."
echo "mercy loves devops!!!!!"

mkdir ${newdir}
echo "${newdir} has been created"
cp -r  ${newfile}  ${newdir}
echo "the ${newfile} has been coppied from source to ${newdir}"

echo "copying using paths"

cp -r ${sourcepath} ${newdir}
echo "copying file ${sourcepath} into ${newdir}"
mkdir ${anotherdir}
echo " creating a new directory called ${anotherdir} "
cp -r ${sourcepath} ${anotherdir}
echo "copying a folder ${sourcepath} to ${anotherdir} "

cp -r ${aicpa_path} ${anotherdir}
echo "copying folder ${aicpa_path} to ${anotherdir}"