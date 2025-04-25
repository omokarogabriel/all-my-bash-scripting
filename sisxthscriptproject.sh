#!/usr/bin/bash

#This script checks the disk space that warns you when the uasge crosses a threshold (eg 50%)

#the limit it will reach to alert me
THRESHOLD=50

USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ $USAGE -eq $THRESHOLD ]
then 
    echo "WARNING: The Disk Space has reach the limit"
    # i can decide to send an email instead or send it to a file
else
    echo "Disk is under control"
fi        
