#!/bin/bash

# This line break the other commands if some command line is fail
set -e

# download and install update - long execute
# sudo apt update > /dev/null 2>&1

# download chrome
if [ ! -f "zoom_amd64.deb" ]; then
	echo "step 1 from 2: download zoom"
	wget https://zoom.us/client/latest/zoom_amd64.deb > /dev/null 2>&1
	sleep 5s
fi
	
echo "step 2 from 2: install chrome"
sudo apt install ./zoom_amd64.deb > /dev/null 2>&1
	
# delete installation file 
rm zoom_amd64.deb
	
# fix any missing dependancies
sudo apt --fix-broken install > /dev/null 2>&1
	
# start chrome 
pkill zoom
sudo zoom

	
