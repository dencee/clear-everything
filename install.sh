#!/usr/bin/env bash
echo "making directory /Users/league/scripts"
mkdir /Users/league/scripts

echo "Downloading client script"
curl https://raw.githubusercontent.com/jointheleague/clear-everything/master/clear_everything_client.sh > /Users/league/scripts/clear_everything_client.sh

echo "changing executable permissions"
chmod +x /Users/league/scripts/clear_everything_client.sh

echo "downloading plist file"
curl https://raw.githubusercontent.com/jointheleague/clear-everything/master/com.league.loginscript.plist > /Users/league/Library/LaunchAgents/com.league.loginscript.plist

echo "initializing load script"
launchctl load /Users/league/Library/LaunchAgents/com.league.loginscript.plist