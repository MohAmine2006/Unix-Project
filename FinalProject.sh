#! /bin/bash

echo "XYX Corp LTD."
Main_Menu_Function () {
echo "M A I N - M E N U"
PS3="Enter your choice [1-7] "
options=("System Status" "Backup" "Network" "Services" "User Management" "File Management" "Exit")
select option in "${options[@]}"
do
	case $option in 
		"System Status")
			System_Status
		;;
		"Backup")
			Backup
		;;
		"Network")
			Network
		;;
		"Services")
			Services
		;;
		"User Management")
			User_Management
		;;
		"File Management")
			File_Management
		;;
		"Exit")
			echo "Exiting..."
			break
		;;
		*)
			echo "Error: Wrong input"
		;;
	esac
done
}

#System Status
System_Status() {
echo "S Y S T E M - S T A T U S"
PS3="Enter an option [1-4] "
ssMenu=("Memory Status" "CPU Temperature" "Active Processes" "Stop and Close Process" "Main Menu")
select option in "${ssMenu[@]}"
do
	case $option in
		"Memory Status")
			echo "Memory Status"
		;;
		"CPU Temperature")
			echo "CPU Temperature"
		;;
		"Active Processes")
			echo "Active Processes"
		;;
		"Stop and Close Process")
			echo "Stop and Close Process"
		;;
		"Main Menu")
			echo "Going Back to Main Menu..."
			echo ""
			break
			Main_Menu_Function
			#Error Here if you go to back to main menu and exit it doesnt work
		;;
		*)
			echo "Error: Wrong input"
		;;
	esac
done
}

#Backup
Backup() {
echo "B A C K U P"
PS3="Enter an option [1-4] "
backupMenu=("Make a Backup Schedule" "Show Last Backup Process" "Main Menu")
select option in "${backupMenu[@]}"
do
	case $option in
		"Make a Backup Schedule")
			echo "Memo"
		;;
		"Show Last Backup Process")
			echo "CPU Temperature"
		;;
		"Main Menu")
			echo "Going Back to Main Menu..."
			echo ""
			Main_Menu_Function
			#Error Here if you go to back to main menu and exit it doesnt work
		;;
		*)
			echo "Error: Wrong input"
		;;
	esac
done
}

#Network
Network() {
echo "Network"
}

#Services
Services() {
echo "Services"
}

#User Management
User_Management() {
echo "User Management"
}

#File Management
File_Management() {
echo "File Management"
}

Main_Menu_Function
echo $?
