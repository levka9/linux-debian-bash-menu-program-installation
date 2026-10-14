#!/bin/bash

# This line break the other commands if some command line is fail
set -e

# download and install update - long execute
# sudo apt update > /dev/null 2>&1

# download chrome
if [ ! -f "google-chrome-stable_current_amd64.deb" ]; then
    echo "step 1 from 2: download chrome"
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sleep 5s
fi

echo "step 2 from 2: install chrome"
sudo apt install ./google-chrome-stable_current_amd64.deb

# fix any missing dependancies
sudo apt --fix-broken install > /dev/null 2>&1

# delete installation file
rm google-chrome-stable_current_amd64.deb

# start chrome 
google-chrome-stable > /dev/null 2>&1
