# ~/.bashrc:

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

### Prompt
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

### History settings
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s histappend

### Aliases
alias ls='ls --color=auto'
alias dir='ls'

### Exports
export EDITOR='vim'

### Misc
shopt -s checkwinsize

### Bash completion
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi