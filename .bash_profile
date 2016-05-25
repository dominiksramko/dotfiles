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

function ttv()
{
  livestreamer twitch.tv/$1 $2 &
  google-chrome-stable --app=https://www.twitch.tv/$1/chat?popout= &&
  fg
}

alias dir="ls"
