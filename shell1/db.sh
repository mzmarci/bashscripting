#/bin/bash
# ./ec2.sh "C:/Users/user/Downloads" test100.pem 3.249.114.234 workspace "C:/Users/user/Bash/bashscripting/shell" "/home/ec2-user/workspace"
# scp -i "${DOWNLOADS}/${KEYPAIR}" -r "C:/Users/user/Bash/bashscripting/database/data.sh" ec2-user@"${IP}":"${WORKSPACE}"

DOWNLOADS=$1
# this is the path where the key pair is stores
# "C:\Users\user\Downloads"
KEYPAIR=$2
# this is the key pair which is stored in the download folder
# the key pair am using is "test100.pem"
IP=$3
# this is the ip address
# this is subject to change always
WORKSPACE=$4
# the directory to be created inthe ec2 server
ORIGIN=$5
# this is the path of the file i want copy from
# C:\Users\user\Bash\bashscripting\shell"
# variable contains the path of the file you want to copy from your local machine
BASE_BK_LOC=$6
# path of the directory
# /home/ec2-user/workspace
# variable contains the path of the directory you created on the remote server



# Check if the required arguments are provided
if [ $# -ne 6 ]; then
    echo "Usage: $0 <downloads_directory> <keypair_file> <EC2_instance_IP> <directory to be created> <source> <destination>"
    exit 1
fi

# Check if SSH login was successful
if [ $? -eq 0 ]; then 
    echo "EC2 server login was successful"
    echo "Directory successfully created"

    # Copying file from local machine to remote server
    echo "Copying file from local machine to remote server..."
    scp -i "${DOWNLOADS}/${KEYPAIR}" -r "${ORIGIN}" ec2-user@"${IP}":"${BASE_BK_LOC}"
# scp -i "${DOWNLOADS}/${KEYPAIR}" -r "C:/Users/user/Bash/bashscripting/database/data.sh" ec2-user@"${IP}":"${WORKSPACE}"

    # Check if file copy was successful
    if [ $? -eq 0 ]; then 
        echo "File successfully copied to remote server"
    else
        echo "Failed to copy file to remote server"
    fi
else
    echo "Failed to login to EC2 server"
fi