#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

### Prompt
PS1='[\u@\h \W]\$ '

### History settings
HISTCONTROL=ignoredups:ignorespace
HISTSIZE=1000
HISTFILESIZE=2000

### Aliases
alias ls='ls --color=auto'
alias dir="ls"

### Exports
export EDITOR="subl3"

### Functions

# Turn on external monitor
function hdmi_on
{
	xrandr --output HDMI-0 --auto --right-of LVDS-0
}

function hdmi_off
{
	xrandr --output HDMI-0 --off
}

# Pacman functions
function pacman_backup
{
	python ~/.scripts/pacman_backup.py
}

function pacman_cleanup
{
	sudo pacman -Rns $(pacman -Qtdq)
}

function pacman_recent
{
	yaourt -Q --date | less
}

function pacman_purge
{
	sudo pacman -Rsn $1
}
