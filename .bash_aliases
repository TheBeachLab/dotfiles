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
alias vi='vim'
alias weather='~/go/bin/wego'
alias worldtime='sh ~/worldtime.sh | lolcat'

# network
alias online='sudo wifi-menu'
alias cable='sudo ip link set cable0 up && sudo dhcpcd cable0'
alias nocable='sudo systemctl stop dhcpcd.service && sudo ip link set cable0 down'

alias df='df -H'


# dotfiles
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# folders
alias blrep='cd ~/Repositories/Beach\ Lab/'
alias fabrep='cd ~/Repositories/Fab/'
alias extrep='cd ~/Repositories/External/'
alias notesrep='cd ~/Repositories/Beach\ Lab/notes/'
alias linuxrep='cd ~/Repositories/Beach\ Lab/myComputing/'
alias bootrep='cd ~/Repositories/Fab/bootcamp-handbook/'
alias fzrep='cd ~/Repositories/Fab/fabzero/'
alias modrep='cd ~/Repositories/Fab/mods/'

# security
alias killcam='sudo rmmod -f uvcvideo'
alias unkillcam='sudo modprobe uvcvideo'

# loopback cam in /dev/video9
alias loopcam='sudo modprobe v4l2loopback video_nr=9'

# blank screen
alias blank='sleep 0.2; xset dpms force off'

# nightly build blender
alias nightblender='/home/unix/opt/blender-git/build_linux/bin/blender'

