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

echo -e "${cyan}[*] Adding files to stage..."
git add .
sleep 1s
read -p "Type Commit Message:" msg
echo -e "${cyan}[*] Commiting..."
sleep 1s
git commit -m "${msg}"
echo -e "${cyan}[*] Pushing to Github..."
git push
echo -r "${yellow}✅ Done."
echo -e $white