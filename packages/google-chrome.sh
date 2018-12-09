#!/bin/bash

echo "Adding vscode.repo.."
sudo rpm --import https://dl.google.com/linux/linux_signing_key.pub
sudo sh -c 'echo -e "[google-chrome]\nname=Google Chrome\nbaseurl=http://dl.google.com/linux/chrome/rpm/stable/x86_64\nenabled=1\ngpgcheck=1\ngpgkey=https://dl.google.com/linux/linux_signing_key.pub" > /etc/yum.repos.d/google-chrome.repo'
echo "Installing..."
yum check-update
sudo yum install google-chrome
