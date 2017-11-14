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

# Prompt
autoload -Uz promptinit
promptinit
prompt damoekri

# Aliases
alias dir="ls"

# Functions
hdmi_on() {
  xrandr --output HDMI-0 --auto --right-of LVDS-0
}

hdmi_off() {
  xrandr --output HDMI-0 --off
}

pacman_backup() {
  python ~/.scripts/pacman_backup.py
}

pacman_cleanup() {
  sudo pacman -Rns $(pacman -Qtdq)
}

pacman_recent() {
  yaourt -Q --date
}