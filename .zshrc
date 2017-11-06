#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

##########
# CUSTOM #
##########

# Aliases
alias dir="ls"

# Functions
hdmi_on() {
  xrandr --output HDMI-0 --auto --right-of LVDS-0
}

hdmi_off() {
  xrandr --output HDMI-0 --off
}