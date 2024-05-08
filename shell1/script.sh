#!/bin/bash
# ./script.sh backup may "C:\Users\user\Bash\bashscripting\shell1" if.sh f LOG_FILE
#declaring command line argument

BACKUP_LOC=$1
# backup directory
# the folder i want to copy
BK_LOC=$2
# backup directory name
# another file inside the first folder
PRACTICEDIR=$3
# file path = "C:\Users\user\Bash\bashscripting\shell
# the file i want to copy, where it is located
FILE=$4
# file or directory
# the name of the file i want to copy
BACKUP_TYPE=$5
# type of documents to be coppied (directory (d) or file (f)
LOG_FILE=$6
# file containing all echo's
# variable Declaration
FINAL_BK_LOC=${BACKUP_LOC}/${BK_LOC}
TS=$(date +"%m-%d-%y-%H-%M-%S")
TIME_LOG=${TS}

#creating the backup dirctory
echo "we will be creating a directory in the backup location">>${TIME_LOG}
if [[ $BACKUP_TYPE == 'f' ]]
then
echo "The backup content is a file">>${TS}
else
echo "The backup content is a Directory">>${TIME_LOG}
fi
#check usage
if (( $# != 6 ))
then
echo "FAIL!!!
Usage: To run this script, you need:
comm_arg1
comm_arg2
comm_arg3
comm_arg4
comm_arg5
comm_arg6">>${TIME_LOG}
exit
fi
#creating the back up directory
echo "creating Backup directory"
if [[ -d ${FINAL_BK_LOC} ]]
then
echo "the Backup directory ${FINAL_BK_LOC} already exists , sleeping for 10 seconds">>${TIME_LOG}
mkdir -p ${FINAL_BK_LOC}/${TS}
sleep 10
else
echo "The directory does not exist, creating new directory: ${FINAL_BK_LOC}">>${TIME_LOG}
mkdir -p ${FINAL_BK_LOC}/${TS}
fi
if (( $? == 0 ))

then
echo "The mkdir command ran succesfully">>${TIME_LOG}
echo "THe backup location ${FINAL_BK_LOC} has been created">>${TIME_LOG}
fi
# copying a files into the backup directory
echo "Now backing up ${FILE} to backup location ${fINAL_BK_LOC}">>${TIME_LOG}
cp -r ${PRACTICEDIR}/${FILE} ${FINAL_BK_LOC}/${TS}/${FILE}_${TS}
if (( $? == 0 ))
then
echo "The cp command ran succesfully">>${TIME_LOG}
echo "FILE COPPIED ">>${TIME_LOG}
fi
# listing content of backup directory
echo "listing content of backup directory">>${TIME_LOG}
ls -ltr ${FINAL_BK_LOC}/${TS}

#counting files in backup directory
echo "counting files in ${FINAL_BK_LOC} directory">>${TIME_LOG}
ls -ltr ${FINAL_BK_LOC}|wc -l



# deleting a file
echo "starting delete job at ${TS}"
#choosing the directory to delete from
read -p "which directory do you want to delete from?: " DIRECTORY_INPUT

chosen1=`ls |nl -s ',' | grep ${DIRECTORY_INPUT}`
echo "you selected : ${chosen}">>${TIME_LOG}


#choosing the file to delete
ls ${DIRECTORY_INPUT}| nl -s '. '
read -p "which file do you want to delete?: " FILE_INPUT
chosen=$(ls ${DIRECTORY_INPUT}|nl -s '. ' | grep ${FILE_INPUT} )
echo "you selected : ${chosen}">>${TIME_LOG}


final_chosen=`echo ${chosen} | cut -f 2 -d ' '`

#prompt user for verification to delete
read -p "Are you sure you want to delete ${chosen2}? Enter Y(yes) or N(no): " INPUT
if [[ ${INPUT} == Y || ${INPUT} == y ]]
then
echo "Removing ${final_chosen}"
rm -r ${DIRECTORY_INPUT}/${final_chosen}
elif [[ ${INPUT} == N || ${INPUT} == n ]]
then
echo "File not deleted"
else
echo "Invalid option"
fi
ls ${DIRECTORY_INPUT}|nl -s '. '


# deleting the folder created

if [[ ! -f "${BACKUP_LOC}" ]]; then
    echo "File does not exist" >> "${TIME_LOG}"
    rm -r "${BACKUP_LOC}"
elif [[ -d "${BACKUP_LOC}" ]]; then
    echo "This is a directory" >> "${TIME_LOG}"
    rm -r "${BACKUP_LOC}"
else
    echo "Backup location is neither a file nor a directory" >> "${TIME_LOG}"
fi


# checking if everything was deleted using nested if
if [[ -f "${BK_LOC}" ]]; then
   echo "this file doesnt exist"
   if [[ -d "${BACKUP_LOC}" ]]; then
   echo "this directory exit"
   else 
   echo "this directory doesnt exist anymore"
   fi
else
    echo "this file was deleted successfully"
fi
#End of script ........


# delete_f_d () {
# echo "Starting the Delete Command Function"
# #Delete Command
# read -p "which directory do you want to delete a file or directory in?: " DIRECTORY_INPU
# chosen1=$(ls |nl -s '. ' | grep ${DIRECTORY_INPU} )
# echo "You Selected ${chosen1}" >>${TIME_LOG}
# #cd ${DIRECTORY_INPU}

# ls ${DIRECTORY_INPU}| nl -s '. '
# read -p "which file or directory do you want to delete?: " DIR_FILE_INPT
# chosen=$(ls ${DIRECTORY_INPU}|nl -s '. ' | grep ${DIR_FILE_INPT} )
# echo "You choose to delete: ${chosen}">>${TIME_LOG}

# chosen2=`echo ${chosen} | cut -f 2 -d ' '`

# #Prompt User For Verification to Delete
# read -p "Are you sure you want to delete ${chosen2}? Enter Y(yes) or N(no): " INPUT
# if [[ ${INPUT} == Y || ${INPUT} == y ]]
# then
# echo "Removing ${chosen2}"
# rm -r ${DIRECTORY_INPU}/${chosen2}
# elif [[ ${INPUT} == N || ${INPUT} == n ]]
# then
# echo "File not deleted"
# else
# echo "Invalid option"
# fi
# ls ${DIRECTORY_INPU}|nl -s '. '
# }








ssh -i normal way to sign in into aws instance from mylocal "/home/oracle/scripts/create_bk_dir_wale.sh ${BASE_BK_LOC}"

#Now Copying File to Destination
echo "Copying File to Destination"
#scp -i ${KEY_LOC}/${KP} ${BK_PATH}/${BK} ${DST_SERVER}:${BASE_BK_LOC}
scp -i "${KEY_LOC}"/"${KP}" "${ORIGIN}" "${DST_SERVER}":"${BASE_BK_LOC}"
echo "Ending File Copy"