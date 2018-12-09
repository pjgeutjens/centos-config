#!/bin/bash

# install packages
sudo yum install -y i3 terminator

# install fonts
./fonts/install.sh

# copy config for terminator and i3
echo "copying terminator and i3 configs" 
cp -rf .config/ $HOME

# copy vim settings
echo "copying .vim folder"
cp -rf .vim $HOME
echo "copying .vimrc"
cp -f .vimrc $HOME
