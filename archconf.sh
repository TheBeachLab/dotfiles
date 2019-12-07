#!bin/bash
while true
do
    clear
    echo -e "\e[33m==================="
    echo "== Configuration =="
    echo -e "===================\e[0m"
    echo ""
    echo -e "\e[33m== i3 environment ==\e[0m"
    echo "1 Configure i3 ............ ~/.config/i3/config"
    echo "2 Configure Polybar ....... ~/.config/polybar/config"
    echo ""
    echo -e "\e[33m== Boot and DM ==\e[0m"
    echo "3 Configure ly ............ /etc/ly/config.ini"
    echo "4 Configure grub .......... /etc/default/grub"
    echo '5 Configure logind ........ /etc/systemd/logind.conf'
    echo '6 Configure xinitrc ....... ~/.xinitrc'
    echo '7 Configure vconsole ...... /etc/vconsole.conf'
    echo '8 Configure Xresources .... ~/.Xresources'
    echo '9 Configure bashrc ........ ~/.bashrc'
    echo '10 Configure vimrc ........ ~/.vimrc'
    echo ""
    echo "s Configure this script ... ~/archconf.sh"
    echo ""
    echo "q Exit"
    echo ""
    echo -e "\e[33mEnter your selection \e[0m\c"
    read answer
    case "$answer" in
        1) vim ~/.config/i3/config ;;
        2) vim ~/.config/polybar/config ;;
        3) sudo vim /etc/ly/config.ini ;;
        4) sudo vim /etc/default/grub
           sudo update-grub ;;
        5) sudo vim /etc/systemd/logind.conf ;;
        6) vim ~/.xinitrc ;;
        7) sudo vim /etc/vconsole.conf ;;
        8) vim ~/.Xresources
           xrdb ~/.Xresources ;;
        9) vim ~/.bashrc
           source ~/.bashrc ;;
        10) vim ~/.vimrc ;;
        s) vim ~/archconf.sh ;;
        q) clear
           exit ;;
    esac
done
