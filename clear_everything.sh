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

echo -ne '\n' | git credential-osxkeychain erase host=github.com protocol=https


git config --local --unset credential.helper
git config --global --unset credential.helper
git config --system --unset credential.helper

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


