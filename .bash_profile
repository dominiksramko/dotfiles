#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

function hdmi_on()
{
  xrandr --output HDMI-0 --auto --right-of LVDS-0
}

function hdmi_off()
{
  xrandr --output HDMI-0 --off
}

alias dir="ls"
