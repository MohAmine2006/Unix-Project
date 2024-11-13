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
			PS3="Enter your choice [1-7] "
			echo "M A I N - M E N U"
			echo "1) System Status"
			echo "2) Backup"
			echo "3) Network"
			echo "4) Services"
			echo "5) User Management"
			echo "6) File Management"
			echo "7) Exit"

		;;
		"Backup")
			Backup
			PS3="Enter your choice [1-7] "
			echo "M A I N - M E N U"
			echo "1) System Status"
			echo "2) Backup"
			echo "3) Network"
			echo "4) Services"
			echo "5) User Management"
			echo "6) File Management"
			echo "7) Exit"
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
PS3="Enter an option [1-5] "
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
			break
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
        echo "== NETWORK MENU =="
        echo "1. Show network cards, IP adresses, and default gateways"
        echo "2. Enable/Disable a network card "
        echo "3. Set an IP adress on a network card"
        echo "4. Connect to a nearby wifi network"
        echo "5. Exit to the main menu"
        read -p "Select an option: " option

        case $option in
                1)
                echo "Network cards and IP adresses: " 
                ip -brief address show
                echo "Default gateways: "
                ip route | grep default
                ;;
                2)
                echo "Here are the available network cards: "
                ip -brief address show
                read -p "Choose a network card: " card
                read -p "Do you want to enable or disable it? (e/d) " ed
                if [ "$ed" == "e" ]; then
                        sudo ip link set "$card" up
                        echo ""$card" enabled"
                else if [ "$ed" == "d" ]; then
                        sudo ip link set "$card" down
                        echo ""$card" disabled"
                else
                        echo "Error: wrong input. Please answer with 'e' or 'd'"
                fi
                ;;
                3)
                echo "Here are the available network cards: " 
                ip -brief address show
                read -p "Select a network card to set the IP adress on: " card
                read -p "Enter an IP address: " ip
                sudo ip addr add "$ip" dev "$card"
                echo "IP address "$ip" has been set on "$card""
                ;;
                4)
                ;;
                5)
		Main_Menu_Functions
                ;;
                *)
                echo "Invalid option. Please choose between option 1 to 5"
                ;;
        esac
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
