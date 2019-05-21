#!/usr/bin/env bash

# Kill GitHub, delete user, reopen
killall GitHub
rm -rf ~/Library/Application\ Support/GitHub\ for\ Mac/*
rm -rf ~/.git*

# Kill Eclipse, delete projects, keep metadata
killall eclipse
killall java

shopt -s extglob

rm -rf ~/eclipse-workspace/

# Delete everything from Desktop and Downloads
rm -rf ~/Desktop/* ~/Downloads/* 
rm -rf ~/git

cd ~/Documents/
rm -rf !(workspace)

mkdir ~/Documents/Processing

killall "Google Chrome"

rm -rf /Users/league/Library/Caches/Google/*

#remove keychains
#rm -rf /Users/league/Library/Keychains/

echo -ne '\n' | git credential-osxkeychain erase host=github.com protocol=https

# remove github app cache data
rm -rf /Users/league/Library/Caches/com.github.GitHub

#remove Chrome Snake
rm -rf /Users/league/Library/Application\ Support/Google/Chrome/*/Extensions/cbdobfnjgnmlcajcamdfjeofmnecepdl

# attempt to remove fit credentials from being saved in keychain
git config --global --unset credential.helper >> /Users/league/Desktop/log.txt 2>&1
git config --system --unset credential.helper >> /Users/league/Desktop/log.txt 2>&1

printf "protocol=https\nhost=github.com\n" | git credential-osxkeychain erase >> /Users/league/Desktop/log.txt 2>&1

#<?xml version="1.0" encoding="UTF-8"?>
#<!DOCTYPE plist PUBLIC "-//Apple Computer//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
#<plist version="1.0">
#<dict>
#   <key>Label</key>
#   <string>com.user.loginscript</string>
#   <key>ProgramArguments</key>
#   <array><string>/Users/league/script.sh</string></array>
#   <key>RunAtLoad</key>
#   <true/>
#</dict>
#</plist>

# install brew
#ruby \
#  -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" \
#  </dev/null

# download obs
#curl https://github.com/jp9000/obs-studio/releases/download/20.1.0/obs-mac-20.1-installer.pkg --output ~/Desktop/obs.pkg

#reset Background
curl https://raw.githubusercontent.com/jointheleague/league-images/master/League%20desktop.png > ~/league.png
osascript -e 'tell application "Finder" to set desktop picture to POSIX file "/Users/league/league.png"'

# install eagle?
#brew cask install eagle
cd
#git clone https://github.com/keithagroves/BasicMultiplayer.git

open https://docs.google.com/document/d/e/2PACX-1vT5XdG77iUZkibeAysT3aaSrGHJxjdPyKvxIt7TX7A2H9n9Uo7FKbO9VTgiQacxa2U3_FRb7oSOXepf/pub

# begin delayed logout on 90 minute timer
sleep 60

#git config --system credential.helper > /Users/league/Desktop/log.txt

osascript -e "tell application \"System Events\" to log out"
