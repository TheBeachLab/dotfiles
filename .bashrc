#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source /etc/profile
PS1='\e[31m[\e[0m\u \w\e[31m]\e[0m\$ '

# Load aliases
source ~/.bash_aliases
