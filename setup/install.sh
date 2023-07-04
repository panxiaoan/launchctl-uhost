#!/bin/sh

cd ..

pwd

echo '>>> copy: uhost.sh → /usr/local/bin'
sudo cp -r ./uhost.sh /usr/local/bin

echo '>>> copy: io.panxiaoan.uhost.plist → /Library/LaunchAgents'
sudo cp -r ./io.panxiaoan.uhost.plist /Library/LaunchAgents

echo '>>> load: launchctl load io.panxiaoan.uhost.plist'
sudo launchctl load /Library/LaunchAgents/io.panxiaoan.uhost.plist

echo '>>> success'