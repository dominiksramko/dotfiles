#!/bin/bash

cp Xresources ~/.Xresources
xrdb ~/.Xresources

cp config ~/.config/i3/config

cp i3status.conf ~/.i3status.conf

cp autostart.sh ~/.autostart
chmod +x ~/.autostart