alias ls='ls --color=auto'

# program aliases
alias kokopelli='python2 /usr/local/bin/kokopelli'
alias ..='cd ..'
alias fuck='sudo $(history -p \!\!)'
alias please='sudo $(history -p \!\!)'
alias c='clear'
alias lsa='ls -a'
alias lsl='ls -lh'
alias lsal='ls -alh'
alias lsla='lsal'
alias pacup='sudo pacman -Syu'
alias yayup='yay -Syu'

# network
alias online='sudo wifi-menu'
alias cable='sudo ip link set cable0 up && sudo dhcpcd cable0'
alias nocable='sudo systemctl stop dhcpcd.service && sudo ip link set cable0 down'

alias df='df -H'


# dotfiles
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

