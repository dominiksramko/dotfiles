#!/bin/bash

cp .bash_profile ~

cp .Xresources ~/.Xresources
xrdb ~/.Xresources

cp i3/config ~/.config/i3/config
cp i3/i3status.conf ~/.i3status.conf

cp autostart.sh ~/.autostart
chmod +x ~/.autostart