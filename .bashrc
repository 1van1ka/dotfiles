#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


alias upd='pacman -Qu | wc -l'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias n='nvim'
alias hx='helix'

export TERM="xterm-256color"

PS1='\[\e[1;36m\]\u@\H \[\e[1;33m\]\w \[\e[1;36m\]\n & \[\e[0m\]' 
