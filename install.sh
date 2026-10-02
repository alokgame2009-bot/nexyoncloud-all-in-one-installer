#!/bin/bash

clear

BLUE='\033[1;34m'
CYAN='\033[1;36m'
YELLOW='\033[1;33m'
WHITE='\033[1;37m'
RED='\033[1;31m'
RESET='\033[0m'
BOLD='\033[1m'

cat <<EOF

${BLUE}  _   _ ________   ____     ______  _   _    _____ _      ____  _    _ _____
 | \ | |  ____\ \ / /\ \   / / __ \| \ | |  / ____| |    / __ \| |  | |  __ \
 |  \| | |__   \ V /  \ \_/ / |  | |  \| | | |    | |   | |  | | |  | | |  | |
 | . \` |  __|   > <    \   /| |  | | . \` | | |    | |   | |  | | |  | | |  | |
 | |\  | |____ / . \    | | | |__| | |\  | | |____| |___| |__| | |__| | |__| |
 |_| \_|______/_/ \_\   |_|  \____/|_| \_|  \_____|______\____/ \____/|_____/

${YELLOW}                         A L L   I N   O N E   I N S T A L L E R${RESET}
${WHITE}                              Power by NexyonCloud${RESET}
${BLUE}                                   Made by Hiro${RESET}

╔════════════════════════════════════════════════════════════╗
║                 N E X Y O N C L O U D                     ║
║                 A L L   I N   O N E                       ║
║                    I N S T A L L E R                      ║
╠════════════════════════════════════════════════════════════╣
║                                                            ║
║   ${CYAN}${BOLD}[ 1 ]  Panel Installer${RESET}                             ║
║   ${CYAN}${BOLD}[ 2 ]  Wings Installer${RESET}                             ║
║   ${CYAN}${BOLD}[ 3 ]  Theme Installer${RESET}                             ║
║   ${CYAN}${BOLD}[ 4 ]  Extensions${RESET}                                  ║
║   ${CYAN}${BOLD}[ 5 ]  Uninstall${RESET}                                   ║
║                                                            ║
║   ${RED}${BOLD}[ 6 ]  Exit${RESET}                                         ║
║                                                            ║
╚════════════════════════════════════════════════════════════╝

${YELLOW}${BOLD}                 Select an option [1-6]: ${RESET}
EOF

read -r choice

case "$choice" in
    1)
        echo
        echo -e "${CYAN}${BOLD}[✓] Starting Panel Installer...${RESET}"
        ;;
    2)
        echo
        echo -e "${CYAN}${BOLD}[✓] Starting Wings Installer...${RESET}"
        ;;
    3)
        echo
        echo -e "${CYAN}${BOLD}[✓] Starting Theme Installer...${RESET}"
        ;;
    4)
        echo
        echo -e "${CYAN}${BOLD}[✓] Opening Extensions...${RESET}"
        ;;
    5)
        echo
        echo -e "${CYAN}${BOLD}[!] Starting Uninstall...${RESET}"
        ;;
    6)
        echo
        echo -e "${RED}${BOLD}[✓] Thanks for using NexyonCloud!${RESET}"
        exit 0
        ;;
    *)
        echo
        echo -e "${RED}${BOLD}[✗] Invalid option!${RESET}"
        exit 1
        ;;
esac
