#!/usr/bin/bash

#This script searches a log file or any file for a specific keyword like ("error", "fail" etc) and report how many times
#it appears

word_count() {
    echo "Enter your name: "
    read USERNAME

    echo "Enter the file path you want to check"
    read FILEPATH

    if [ ! -f $FILEPATH ]   
    then
        echo "ERROR $FILEPATH NOT FOUND"
        exit 1
    fi    

    echo "Enter the keyword"
    read KEYWORD

    echo "Calculating for the keyword....."
    COUNT=$(grep -in $KEYWORD $FILEPATH | wc -l)
    echo The word $KEYWORD appears $COUNT times.
    echo Goodbye $USERNAME
}
word_count

echo "Do you want to try again, enter yes or no"
read option
# while true;
# do 

    case $option in
        yes )
            word_count ;;
        no )
            echo Goodbye $USERNAME
            exit 0;;    
    esac 
# done      