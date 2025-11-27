#! /bin/bash

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

for i in {1..5}; do
    echo " "
done

echo -e "\e[32myour System Status:\e[0m"
neofetch



# Message Finished job Time
echo -e "\e[32mLinux:\e[0m  \e[31mApt Process Completed (Errors Fixed & Packages Upgraded)\e[0m"

for i in {1..3}; do
    echo " "
done
echo -e "\e[96m=========================================\e[0m"
quotes=(
    "Linux: Freedom to choose!"
    "Linux: Power at your fingertips!"
    "Linux: Where coders feel at home."
    "Linux: Stability meets felexibility."
    "Linux: Open-source, Open Possibilities"
)

random_index=$((RANDOM % ${#quotes[@]}))
echo -e "\e[36m${quotes[$random_index]}\e[0m" 
echo -e "\e[96m=========================================\e[0m"
for i in {1..3}; do
    echo " "
done

echo -e "\e[31mCreated By GodFather \e[0m"

for i in {1..2}; do
    echo " "
done