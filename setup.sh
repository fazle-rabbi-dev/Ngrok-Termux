#!/bin/bash
# Author: fazle rabbi
# Date: 6 November,2022

home_dir='/data/data/com.termux/files/home'
my_dir='/data/data/com.termux/files/home/ngrok-termux'
token='uaisjsk'
if [ -f "$home_dir/ngrok" ]; then
echo 'File Exist' # Do remove ngrok
cd $home_dir
rm -rf ngrok
cd $my_dir
mv ngrok $home_dir
cd $home_dir
./ngrok authtoken $token
fi

