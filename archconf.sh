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
    echo ""
    echo "s Configure this script ... ~/archconf.sh"
    echo ""
    echo "q Exit"
    echo ""
    echo -e "\e[33mEnter your selection \e[0m\c"
    read answer
    case "$answer" in
        1) nano ~/.config/i3/config ;;
        2) nano ~/.config/polybar/config ;;
        3) sudo nano /etc/ly/config.ini ;;
        4) sudo nano /etc/default/grub
           sudo update-grub ;;
        5) sudo nano /etc/systemd/logind.conf ;;
        6) nano ~/.xinitrc ;;
        7) sudo nano /etc/vconsole.conf ;;
        8) nano ~/.Xresources
           xrdb ~/.Xresources ;;
        9) nano ~/.bashrc
           source ~/.bashrc ;;
        s) nano ~/archconf.sh ;;
        q) clear
           exit ;;
    esac
done
