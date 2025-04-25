#!/usr/bin/bash

#this script will ask for a user name, greet them and offer a few options to display system imformation

#provide the user with the options to:
#1 Display system uptime
#2 Show current disk usage
#3 Display current date and time
#4 Exit the script


usersysteminfo(){

    #function to display system up time
    up_time(){
        echo "This is the system uptime"
        uptime -p
    }

    #function to show the current disk usage
    disk_usage(){
        echo "This is the disk usage of the machine"
        df -h
    }

    #function to display the current date and time
    date_time(){
        echo "This is the current date and time"
        date 
    }

    echo "enter your name"
    read username

    echo "welcome $username"
    echo "what will you like to check on the system?"

    while true; 
    do
        echo ""
        echo "Enter 1 to display the system uptime"
        echo "Enter 2 to show current disk usage"
        echo "Enter 3 to display current date and time"
        echo "Enter 4 to exit the script"

        read option

        case $option in
            1 )
                up_time ;;
            2 )
                disk_usage ;;
            3 ) 
                date_time ;;
            4 )
                echo "Goodbye $username! Have a great day!"
                exit 0   ;; 
            ? )
                echo "Invalid option. Please try again!"  ;;       
        esac
    done    
}

usersysteminfo