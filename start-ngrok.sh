#!/bin/bash
# Author: fazle rabbi
# Date: 6 November,2022

# Colors:
red='\033[1;91m'
green='\033[1;92m'
yellow='\033[1;93m'
blue='\033[1;94m'
pink='\033[1;95m'
cyan='\033[1;96m'
reset='\033[0m'

clear
sleep 1s
echo -e "$green[*] Starting Ngrok..."
echo -e "$green[*]Please turn on your **HOTSPOT**"
echo -e "${blue}If your **HOTSPOT** are enable the type Y/yes and hit enter.${green}"
read -p "Choose an option:" value
if [[ $value == 'y' ]]; then
   echo -e "$yellow Please Wait ..."
   clear
   sleep 1s   
   echo -en "$yellow Type your PORT:"
   read PORT
   cd $HOME
   ./ngrok http $PORT
else
   echo -e "${red}[*] Quiting..."
fi
