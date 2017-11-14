#!/bin/bash

# X
ln -s `pwd`/.Xresources ~/.Xresources
xrdb ~/.Xresources

# scripts
ln -s `pwd`/.scripts/ ~/.scripts

# i3wm
rm -rf ~/.config/i3
mkdir ~/.config/i3
ln -s `pwd`/.config/i3/config ~/.config/i3/config

rm -rf ~/.config/i3status
mkdir ~/.config/i3status
ln -s `pwd`/.config/i3status/config ~/.config/i3status/config

# zsh
ln -s `pwd`/.zshrc ~/

# fontconfig
ln -s `pwd`/.fonts.conf ~/

cp autostart.sh ~/.autostart
chmod +x ~/.autostart
