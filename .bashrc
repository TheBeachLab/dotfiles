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

# Xterm transparency
[ -n "$XTERM_VERSION" ] && transset-df --id "$WINDOWID" >/dev/null

# Load aliases
source ~/.bash_aliases

# Powerline
#powerline-daemon -q
#POWERLINE_BASH_CONTINUATION=1
#POWERLINE_BASH_SELECT=1
#. /usr/share/powerline/bindings/bash/powerline.sh

# GPG
GPG_TTY=`tty`
export GPG_TTY

# Flutter Path
export PATH="$PATH:~/flutterdev/flutter/bin"

# Source custom functions
source ~/.custom_functions.sh

