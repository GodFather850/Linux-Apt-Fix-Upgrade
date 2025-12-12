#! /bin/bash

echo -e "\e[42mFixing Your Linux Pleas Wait.....\e[0m"
# To Remove DPKG/APT That incomplete
sudo rm -f /var/lib/dpkg/lock-frontend /var/lib/dpkg/lock

# Configuring all Installed Packages
sudo dpkg --configure -a

# Fix problematic dependencise And repair packages
sudo apt --fix-broken install -y

# Update & Upgrade
sudo apt update && sudo apt upgrade -y

# System Status
if ! command -v neofetch &> /dev/null; then
    sudo apt install neofetch -y
fi

for i in {1..2}; do
    echo " "
done

# Message Finished job Time
echo -e "\e[42mLinux:\e[0m  \e[31mApt Process Completed (Errors Fixed & Packages Upgraded)\e[0m"

for i in {1..2}; do
    echo " "
done

echo -e "\e[46m=========================================\e[0m"
quotes=(
    "Linux: Freedom to choose!"
    "Linux: Power at your fingertips!"
    "Linux: Where coders feel at home."
    "Linux: Stability meets felexibility."
    "Linux: Open-source, Open Possibilities"
)

random_index=$((RANDOM % ${#quotes[@]}))
echo -e "\e[36m${quotes[$random_index]}\e[0m" 
echo -e "\e[46m=========================================\e[0m"
for i in {1..2}; do
    echo " "
done

# FeedBack
read -p "Send your feedback (1-10): " num

while ! [[ "$num" =~ ^[1-9]$|^10$ ]]; do
	echo "Wrong FeedBack Pleas Enter Number between 1-10"
	read -p "Send your feedback (1-10): " num
done

# if feedback < 5
if [[ "$num" -le 5 ]]; then
	read -p "Make a suggestion for improvement: " feedback
	if [[ -z "$feedback" ]]; then
		clear
	else
		neofetch
		echo -e "\e[96mThanks for your feedback <3\e[0m"
		echo -e "\e[45mCreated By GodFather\e[0m"
	fi
else
	echo -e "\e[96mThanks for your feedback <3\e[0m"
	echo -e "\e[45mCreated By GodFather\e[0m"
fi

echo -e "\e[32mGood Luck!\e[0m"

