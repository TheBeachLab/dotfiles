alias ls='ls --color=auto'

# program aliases
alias kokopelli='python2 /usr/local/bin/kokopelli'
alias ..='cd ..'
alias please='sudo $(history -p \!\!)'
alias c='clear'
alias lsa='ls -a'
alias lsl='ls -lh'
alias lsal='ls -alh'
alias lsla='lsal'
alias vi='vim'
alias worldtime='sh ~/worldtime.sh | lolcat'

# network
alias online='sudo wifi-menu'
alias cable='sudo netctl start ethernet-dhcp'
alias cablef='sudo netctl start ethernet-static' 
alias nocable='sudo netctl stop-all'

alias df='df -H'


# dotfiles
alias dot='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# folders
alias blrep='cd ~/Repositories/Beach\ Lab/'
alias fabrep='cd ~/Repositories/Fab/'
alias extrep='cd ~/Repositories/External/'
alias notesrep='cd ~/Repositories/Beach\ Lab/notes/'
alias linuxrep='cd ~/Repositories/Beach\ Lab/myComputing/'
alias fzrep='cd ~/Repositories/Fab/fabzero/'
alias modrep='cd ~/Repositories/Fab/mods/'

# security
alias killcam='sudo rmmod -f uvcvideo'
alias unkillcam='sudo modprobe uvcvideo'

# loopback cam in /dev/video9
alias loopcam='sudo modprobe -r v4l2loopback && sudo modprobe v4l2loopback devices=2 video_nr=10,20 card_label=TimerCam,StreamCam'
alias fixloopcam='sh ~/rebuild.sh'

# blank screen
alias blank='sleep 0.2; xset dpms force off'

# topy alias
alias beso='python /home/unix/Repositories/Beach\ Lab/engineering/topy/scripts/optimise.py $1'

# yeti mic
alias yetimic='alsa_in -j "Yeti" -d hw:Microphone -q 1 2>&1 1> /dev/null &'
alias kyeti='pkill alsa_in'

# gpu
alias igpu='sudo gswitch internal'
alias egpu='sudo gswitch egpu'

# xplane
alias fly='~/X-Plane\ 11/X-Plane-x86_64 --monitor_bounds=0,0,1920,1080,1920,0,1920,1080,3840,0,1920,1080'

# check staged files 
alias check='ruby ~/git-diff-size-check.rb'

# connect to server
alias pink='ssh -p 622 pink@beachlab.org'
alias githome='ssh -p 622 git@beachlab.org'

# activate dnie reader
alias dnie='sudo systemctl restart pcscd.socket'

# check public ip
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'

# autohotkey
alias autokey='~/Repositories/Beach\ Lab/stream-deck/autohotkey.py'

# music
alias music='ncmpcpp'
