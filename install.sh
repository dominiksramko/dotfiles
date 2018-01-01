#!/bin/bash

# X
#n -sf `pwd`/.Xresources ~/.Xresources
#rdb ~/.Xresources

# i3wm
# ln -sf `pwd`/.config/i3/config ~/.config/i3/config
# ln -sf `pwd`/.config/i3status/config ~/.config/i3status/config

# bash
ln -sf `pwd`/.bashrc ~/

# fontconfig
ln -sf `pwd`/.fonts.conf ~/

# scripts
ln -sf `pwd`/.scripts/ ~/.scripts

# git
ln -sf `pwd`/.gitconfig ~/

# mpv
ln -sf `pwd`/.config/mpv/mpv.conf ~/.config/mpv/mpv.conf
ln -sf `pwd`/.config/mpv/input.conf ~/.config/mpv/input.conf
