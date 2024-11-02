#! /bin/bash

echo "XYX Corp LTD."
Main_Menu_Function () {
echo "M A I N - M E N U"
PS3="Enter your choice [1-4] "
options=("User Management" "Service Management" "Process Management" "Backup" "Exit")
select option in "${options[@]}"
do
	case $option in 
		"User Management")
			echo "User Management"
		;;
		"Service Management")
			echo "Service management"
		;;
		"process Management")
			echo "Process management"
		;;
		"Backup")
			echo "Backup"
		;;
		"Exit")
			echo "Exiting"
			break
		;;
		*)
			echo "Something"
		;;
	esac
done
}

Main_Menu_Function
echo $?
