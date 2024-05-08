#/bin/bash
# this is to check if git is installed 
command="git"
commit_message=$1
branch_name=$2

if [ -d $command ]
then 
        echo "$command is available, lets run it"
else
         echo "$command is not availabe, lets install it"
         "sudo yum update && sudo yum install -y $command"
fi

if (( $? == 0 ))

then
         echo "the installation of $command was sucessfull"
else 
         echo " $command failed to install"
$command

# Function to add and commit changes
commit_changes() {
    git add .
    git commit -am "$commit_message"
    echo "Changes committed with message: $commit_message"
}

# Function to push changes to a remote repository
push_changes() {
    git push origin "$branch_name"
    echo "Changes pushed to remote branch: $branch_name"
}