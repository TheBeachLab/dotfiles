#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source /etc/profile

# color codes
RED="\033[31m"
YELLOW="\033[33m"
RESET="\033[0m"

PS1="\[${RED}\][\[${RESET}\]\u \[${YELLOW}\]\w\[${RED}\]]\[${RESET}\]\$ "

# Load aliases
source ~/.bash_aliases
