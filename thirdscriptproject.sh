#!/usr/bin/bash

# This script prints out system information, dispays the current user, system uptime and the number of users currently
#logged in


my_info() {

    current_user() {
        echo "This is the current user"
        whoami
    }

    up_time() {
        echo "This is the system uptime so far"
        uptime -p
    }

    users_currently_logged_in() {
        echo "This is the number of users that are currently logged in"
        who | wc -l
    }

    disk_storage() {
        echo "This is the disk storage info"
        df -h / | awk 'NR==1 || NR==2'
    }

    echo " kindly enter your username below:  "
    read username

    echo "Hello" $username

    while true; 
    do


        echo "What would you like to do"


        echo "Enter 1 to display the current user"
        echo "Enter 2 to check the system uptime"
        echo "Enter 3 to know the number of users currently logged in"
        echo "Enter 4 to check the disk storage"
        echo "Enter 5 to exit"

        echo "Kindly enter the valid option above"
        read options

        case $options in
            1 )
                current_user ;;
            2 )
                up_time ;;
            3 ) 
                users_currently_logged_in ;;
            4 ) 
                disk_storage ;;
            5 ) 
                echo "Goodbye $username! Have a great day!"
                exit 0 ;;
            ? ) 
                echo "Invalid option. Please try again!"  ;;        
        esac
    done

}
my_info

