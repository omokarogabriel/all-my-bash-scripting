#!/usr/bin/bash

# This script copies all .txt files from a directory to a backup folder named backup_YYYYMMDD

# SOURCE_DIRECTORY="$HOME/Desktop"
# BACKUP_DIRECTORY="$HOME/BACKUP_FILE_$(date +%Y%m%d)"

# # create the backup directory if it doesnt exist
# mkdir -p "$BACKUP_DIRECTORY"

# # copy the file all in .txt
# cp -r "$SOURCE_DIRECTORY"/*.txt "$BACKUP_DIRECTORY"

# if [ $? = 0 ]
# then 
#     echo "The backup was successful"
# else 
#     echo "There is an error" 
# fi       



#using tar file 

SOURCE_DIR=$HOME/Desktop
BACKUP_DIR=$HOME/MY-BACKUP_$(date +%y%m%d).tar.gz

mkdir -p $BACKUP_DIR

cp -r $SOURCE_DIR/*.txt $BACKUP_DIR

if [ $? = 0 ]
then
    echo "The backup was a success"
    echo "Text files from $SOURCE_DIR copied to $BACKUP_DIR"
else
    echo "There is an Error"
fi        