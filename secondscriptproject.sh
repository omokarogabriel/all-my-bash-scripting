#!/usr/bin/bash 


#This script will act as a file backup tool, it will ask the user for a directory to backup,create a compressed archive 
#of that directory and save it with a time stamp

#list of what to do
#. Ask the user for the directory they want to backup
#. Check if the directory exists
#. Create a compressed .tar.gz backup of that directory
#. Save the backup with a time stamp in the filename
#. Notify the user when the backup is completed

touch log_file
echo "Hello i am here to help you with your file" 
read -p "Please enter your name: " username 

echo ""

echo "Welcome $username, good to help you" ;| log_file

echo ""

echo "Enter the file or directory: " ;| log_file
read file 

if [ -d $file ]
then
    echo "backing up file!!" ;| log_file
    timestamp=$(date +%y%m%d_%H%M%S)
    backing_file="backup_$timestamp.tar.gz"
    tar -czf $backing_file $file
    if [ $? = 0 ]
    then
        echo "Hello $username the file has successfully been backed up!!!" ;| log_file
        echo "The file name is $backing_file" ;| log_file
    else
        echo "There was an error"
    fi        
else
    echo "Error! backing up file, or file does not exist"   
    exit 1
fi

echo "$log_file"