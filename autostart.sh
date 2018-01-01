#!/bin/bash

# Mouse settings
#xset m 1 1 &
#xset s off &

# Stuff for i3wm
# nitrogen --restore &
# dropbox &
# redshift &
# ibus-daemon

# Compositor
compton -b --backend glx --vsync opengl --no-fading-openclose &

# Mouse settings
synclient TapButton1=1 TapButton2=3 TapButton3=2 &
synclient ClickTime=0 &
synclient SingleTapTimeout=0 &
# xset m 1 1 &
# set s off &