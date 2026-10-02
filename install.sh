#!/bin/bash

clear

# ==============================
# NexyonCloud All In One Installer
# ==============================

BLUE='\033[1;34m'
CYAN='\033[1;36m'
YELLOW='\033[1;33m'
WHITE='\033[1;37m'
RED='\033[1;31m'
RESET='\033[0m'
BOLD='\033[1m'

printf "\n"

# LOGO - DEEP BLUE
printf "${BLUE}"
cat <<'EOF'
  _   _ ________   ____     ______  _   _    _____ _      ____  _    _ _____
 | \ | |  ____\ \ / /\ \   / / __ \| \ | |  / ____| |    / __ \| |  | |  __ \
 |  \| | |__   \ V /  \ \_/ / |  | |  \| | | |    | |   | |  | | |  | | |  | |
 | . ` |  __|   > <    \   /| |  | | . ` | | |    | |   | |  | | |  | | |  | |
 | |\  | |____ / . \    | | | |__| | |\  | | |____| |___| |__| | |__| | |__| |
 |_| \_|______/_/ \_\   |_|  \____/|_| \_|  \_____|______\____/ \____/|_____/
EOF
printf "${RESET}\n"

# TITLE - YELLOW
printf "${YELLOW}${BOLD}"
printf "                         A L L   I N   O N E   I N S T A L L E R"
printf "${RESET}\n"

# POWER - WHITE
printf "${WHITE}"
printf "                              Power by NexyonCloud"
printf "${RESET}\n"

# MADE BY - BLUE
printf "${BLUE}"
printf "                                   Made by Hiro"
printf "${RESET}\n\n"

# HEADER
printf "${BLUE}╔════════════════════════════════════════════════════════════╗${RESET}\n"
printf "${BLUE}║${RESET}                 ${WHITE}${BOLD}N E X Y O N C L O U D${RESET}                     ${BLUE}║${RESET}\n"
printf "${BLUE}║${RESET}                 ${WHITE}${BOLD}A L L   I N   O N E${RESET}                       ${BLUE}║${RESET}\n"
printf "${BLUE}║${RESET}                    ${WHITE}${BOLD}I N S T A L L E R${RESET}                      ${BLUE}║${RESET}\n"
printf "${BLUE}╠════════════════════════════════════════════════════════════╣${RESET}\n"

# MENU
printf "${BLUE}║${RESET}                                                            ${BLUE}║${RESET}\n"

printf "${BLUE}║${RESET}   ${CYAN}${BOLD}[ 1 ]  Panel Installer${RESET}                             ${BLUE}║${RESET}\n"
printf "${BLUE}║${RESET}   ${CYAN}${BOLD}[ 2 ]  Wings Installer${RESET}                             ${BLUE}║${RESET}\n"
printf "${BLUE}║${RESET}   ${CYAN}${BOLD}[ 3 ]  Theme Installer${RESET}                             ${BLUE}║${RESET}\n"
printf "${BLUE}║${RESET}   ${CYAN}${BOLD}[ 4 ]  Extensions${RESET}                                  ${BLUE}║${RESET}\n"
printf "${BLUE}║${RESET}   ${CYAN}${BOLD}[ 5 ]  Uninstall${RESET}                                   ${BLUE}║${RESET}\n"

printf "${BLUE}║${RESET}                                                            ${BLUE}║${RESET}\n"

printf "${BLUE}║${RESET}   ${RED}${BOLD}[ 6 ]  Exit${RESET}                                         ${BLUE}║${RESET}\n"

printf "${BLUE}║${RESET}                                                            ${BLUE}║${RESET}\n"
printf "${BLUE}╚════════════════════════════════════════════════════════════╝${RESET}\n\n"

# PROMPT - YELLOW
printf "${YELLOW}${BOLD}                 Select an option [1-6]: ${RESET}"
read -r choice

case "$choice" in

    1)
        printf "\n${CYAN}${BOLD}[✓] Starting Panel Installer...${RESET}\n"
        ;;

    2)
        printf "\n${CYAN}${BOLD}[✓] Starting Wings Installer...${RESET}\n"
        ;;

    3)
        printf "\n${CYAN}${BOLD}[✓] Starting Theme Installer...${RESET}\n"
        ;;

    4)
        printf "\n${CYAN}${BOLD}[✓] Opening Extensions...${RESET}\n"
        ;;

    5)
        printf "\n${CYAN}${BOLD}[!] Starting Uninstall...${RESET}\n"
        ;;

    6)
        printf "\n${RED}${BOLD}[✓] Thanks for using NexyonCloud!${RESET}\n"
        exit 0
        ;;

    *)
        printf "\n${RED}${BOLD}[✗] Invalid option!${RESET}\n"
        exit 1
        ;;

esac
