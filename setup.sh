#!/bin/bash
# Author: fazle rabbi
# Date: 6 November,2022

clear

# Colors:
red='\033[1;91m'
green='\033[1;92m'
yellow='\033[1;93m'
blue='\033[1;94m'
pink='\033[1;95m'
cyan='\033[1;96m'
reset='\033[0m'

bin_dir='/data/data/com.termux/files/usr/bin'
function setup_ngrok(){
   cd $my_dir
   echo -e "${blue}Copying start-ngrok to binary folder"
   cp -r start-ngrok.sh $bin_dir
   sleep 1s
   cd $bin_dir
   mv start-ngrok.sh start-ngrok
   sleep 1s
   chmod +x start-ngrok
   sleep 1s
   cd $home_dir
   rm -rf ngrok
   sleep 1s
   cd $my_dir
   cp -r ngrok $home_dir
   sleep 1s
   cd $home_dir
   ./ngrok authtoken $token
   clear   
   echo '[*] Good Job!'
   echo '[*] Ngrok is setup successful'
   echo '[*] Now you can use ngrok by execute bellow command'
   echo -e "${yellow}[*] start-ngrok"
}

home_dir='/data/data/com.termux/files/home'
my_dir='/data/data/com.termux/files/home/Ngrok-Termux'
token='1lzw6Xuxnki9HVblM45irvSZ06k_2FehSKLhZXbFbcBXZZS4Q'
# Checking Repo Exists or Not
if [ -d "$home_dir/Ngrok-Termux" ]; then
echo 'Ngrok-Termux Already Installed.'
else
echo 'Installing Ngrok-Termux...'
sleep 1s
clear
cd $home_dir
git clone https://github.com/fh-rabbi/Ngrok-Termux
clear
fi
# Checking ngrok either available or not!
if [ -f "$home_dir/ngrok" ]; then
echo 'Ngrok Exists!' # Do remove ngrok
sleep 1s
echo 'Removing ngrok...'
sleep 1s
setup_ngrok
else
setup_ngrok
fi