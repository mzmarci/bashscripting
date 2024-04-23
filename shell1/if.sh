#!/bin/bash

name="Marci"
command="C:\Users\user\Bash\bashscripting\htop"
command="htop"

if [ "$name" = "Alexis" ];
then
        echo "Welcome Alexis"
else
        echo "Please enter the correct name"
fi        


if [ ! $name = "Alexis" ];
then
        echo "Welcome Alexis"
else
        echo "Please enter the correct name"
fi 

if [ -d $command ]
then 
        echo "$command is available, lets run it"
else
         echo "$command is not availabe, lets install it"
         "sudo yum update && sudo yum install -y $command"
fi

$command