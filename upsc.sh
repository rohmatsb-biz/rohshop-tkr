#!/bin/bash
# =========================================
# Menu For Script
# Edition : Stable Edition V2.0
# Auther  : TekiroVpn X LynzVpn X ProfAmpoh
# (C) Copyright 2023-2024
# =========================================
akuu="\033[33m"  #yello
merah="\033[1;31m"  #REDTERANG
g='\e[0;32m'
NC='\033[0m'
IP=$(wget -qO- ipinfo.io/ip)
#anu
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-No such file or directory-0" -d "$dateFromServer"`
red() { echo -e "\\033[32;1m${*}\\033[0m"; }

#intro wak¡
echo -e "\e[0m————————————————————————————————————————\e[0m"
echo -e "      $PURPLE     UPDATE SCRIPT "
echo -e "\e[0m————————————————————————————————————————\e[0m"
echo -e "   ${g}    Autoscript has been updated${NC}"
echo -e "  ${akuu} Your VPS$NC${merah} ${IP} $NC ${akuu}Update script${NC}"
echo -e "  ${akuu}       Feature new info for scripts${NC}"
echo -e "     1.Fix Menu${NC}"
echo -e "\e[0m————————————————————————————————————————\e[0m"
echo -e "          CTRL + C TO BACK MENU${NC}"
read -n 1 -s -r -p "     Press enter update server"
clear
fun_bar() {
    CMD[0]="$1"
    CMD[1]="$2"
    (
        [[ -e $HOME/fim ]] && rm $HOME/fim
        ${CMD[0]} -y >/dev/null 2>&1
        ${CMD[1]} -y >/dev/null 2>&1
        touch $HOME/fim
    ) >/dev/null 2>&1 &
    tput civis
    echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
    while true; do
        for ((i = 0; i < 18; i++)); do
            echo -ne "\033[0;32m⏳"
            sleep 0.1s
        done
        [[ -e $HOME/fim ]] && rm $HOME/fim && break
        echo -e "\033[0;33m]"
        sleep 1s
        tput cuu1
        tput dl1
        echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
    done
    echo -e "\033[0;33m]\033[1;37m -\033[1;32m OK !\033[1;37m"
    tput cnorm
}
res1() {
    wget https://aio.tekirovpn.my.id/レスキセティワン/menu.zip
    unzip menu.zip
    chmod +x menu/*
    mv menu/* /usr/local/sbin
    rm -rf menu
    rm -rf menu.zip
    
}
netfilter-persistent
clear
echo -e "\e[0m————————————————————————————————————————\e[0m"
echo -e " \e[1;97;101m        Update Script Tekiro       \e[0m"
echo -e "\e[0m————————————————————————————————————————\e[0m"
echo -e ""
echo -e "  \033[1;91m update script service\033[1;37m"
fun_bar 'res1'
echo -e "\e[0m————————————————————————————————————————\e[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
utility


###########- COLOR CODE -##############
