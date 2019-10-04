#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source /etc/profile

# color codes
RED="\[\033[31m\]"
RESET="\\033[0m\]"

PS1="${RED}[${RESET}\u \w${RED}]${RESET}\$ "

#PS1="\e[31m[\e[0m\u \w\e[31m]\e[0m\$ "

# Load aliases
source ~/.bash_aliases
