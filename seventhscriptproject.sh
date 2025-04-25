#!/usr/bin/bash

#This script checks a file of users or name, in order to create user

USER_FILE_SOURCE="user.txt"

#check if file exists

if [ ! -f $USER_FILE_SOURCE ]; then 
    echo ERR, $USER_FILE_SOURCE does not exist
    exit 1
fi       

while IFS= read -r username
do
    if id "$username" &>/dev/null
    then
        echo "User $username already exists "
    else
        echo "User created $username"    
    fi
done < "$USER_FILE_SOURCE"   

echo
echo Memory Storage
echo
#for memory checking

#
#free | grep Mem | awk 'NR==1 {print $2,$3,$4}'
TOTAL_MEMORY=$(free -h | grep Mem | awk 'NR==1 {print $2}')
USED_MEMORY=$(free -h | grep Mem | awk 'NR==1 {print $3}')
FREE_MEMORY=$(free -h | grep Mem | awk 'NR==1 {print $4}')
echo  -e "The Total Memory is $TOTAL_MEMORY.\nThe Used Memory is $USED_MEMORY.\nThe Free Memory is $FREE_MEMORY."
