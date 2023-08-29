#!/bin/sh

echo ">>> 当前路径：$(pwd)"

echo '>>> copy: uhost.sh → /usr/local/bin'
sudo cp -r ./uhost.sh /usr/local/bin

echo '>>> copy: io.panxiaoan.uhost.plist → /Library/LaunchAgents'
sudo cp -r ./io.panxiaoan.uhost.plist /Library/LaunchAgents

echo '>>> load: io.panxiaoan.uhost.plist'
sudo launchctl load /Library/LaunchAgents/io.panxiaoan.uhost.plist

echo '>>> success'