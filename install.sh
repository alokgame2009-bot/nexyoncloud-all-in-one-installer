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

# ==============================
# LOGO
# ==============================

printf '%b\n' "${BLUE}"
printf '%s\n' \
'  _   _ ________   ____     ______  _   _    _____ _      ____  _    _ _____' \
' | \ | |  ____\ \ / /\ \   / / __ \| \ | |  / ____| |    / __ \| |  | |  __ \' \
' |  \| | |__   \ V /  \ \_/ / |  | |  \| | | |    | |   | |  | | |  | | |  | |' \
' | . ` |  __|   > <    \   /| |  | | . ` | | |    | |   | |  | | |  | |  | |' \
' | |\  | |____ / . \    | | | |__| | |\  | | |____| |___| |__| | |__| | |__| |' \
' |_| \_|______/_/ \_\   |_|  \____/|_| \_|  \_____|______\____/ \____/|_____/'
printf '%b\n' "${RESET}"

# ==============================
# BRANDING
# ==============================

printf '%b\n' "${YELLOW}${BOLD}                         A L L   I N   O N E   I N S T A L L E R${RESET}"
printf '%b\n' "${WHITE}                              Power by NexyonCloud${RESET}"
printf '%b\n\n' "${BLUE}                                   Made by Hiro${RESET}"

# ==============================
# HEADER
# ==============================

printf '%b\n' "${BLUE}╔════════════════════════════════════════════════════════════╗${RESET}"
printf '%b\n' "${BLUE}║${RESET}                 ${WHITE}${BOLD}N E X Y O N C L O U D${RESET}                    ${BLUE}║${RESET}"
printf '%b\n' "${BLUE}║${RESET}                 ${WHITE}${BOLD}A L L   I N   O N E${RESET}                      ${BLUE}║${RESET}"
printf '%b\n' "${BLUE}║${RESET}                    ${WHITE}${BOLD}I N S T A L L E R${RESET}                     ${BLUE}║${RESET}"
printf '%b\n' "${BLUE}╠════════════════════════════════════════════════════════════╣${RESET}"

# ==============================
# MENU
# ==============================

printf '%b\n' "${BLUE}║${RESET}                                                            ${BLUE}║${RESET}"
printf '%b\n' "${BLUE}║${RESET}   ${CYAN}${BOLD}[ 1 ]  Panel Installer${RESET}                             ${BLUE}║${RESET}"
printf '%b\n' "${BLUE}║${RESET}   ${CYAN}${BOLD}[ 2 ]  Wings Installer${RESET}                             ${BLUE}║${RESET}"
printf '%b\n' "${BLUE}║${RESET}   ${CYAN}${BOLD}[ 3 ]  Theme Installer${RESET}                             ${BLUE}║${RESET}"
printf '%b\n' "${BLUE}║${RESET}   ${CYAN}${BOLD}[ 4 ]  Extensions${RESET}                                  ${BLUE}║${RESET}"
printf '%b\n' "${BLUE}║${RESET}   ${CYAN}${BOLD}[ 5 ]  Uninstall${RESET}                                   ${BLUE}║${RESET}"
printf '%b\n' "${BLUE}║${RESET}                                                            ${BLUE}║${RESET}"
printf '%b\n' "${BLUE}║${RESET}   ${RED}${BOLD}[ 6 ]  Exit${RESET}                                         ${BLUE}║${RESET}"
printf '%b\n' "${BLUE}║${RESET}                                                            ${BLUE}║${RESET}"
printf '%b\n\n' "${BLUE}╚════════════════════════════════════════════════════════════╝${RESET}"

# ==============================
# INPUT
# ==============================

printf '%b' "${YELLOW}${BOLD}                 Select an option [1-6]: ${RESET}"
read -r choice

# ==============================
# OPTIONS
# ==============================

case "$choice" in

    1)
        printf '%b\n' "${CYAN}${BOLD}[✓] Starting Panel Installer...${RESET}"
        ;;

    2)
        printf '%b\n' "${CYAN}${BOLD}[✓] Starting Wings Installer...${RESET}"
        ;;

    3)
        printf '%b\n' "${CYAN}${BOLD}[✓] Starting Theme Installer...${RESET}"
        ;;

    4)
        printf '%b\n' "${CYAN}${BOLD}[✓] Opening Extensions...${RESET}"
        ;;

    5)
        printf '%b\n' "${CYAN}${BOLD}[!] Starting Uninstall...${RESET}"
        ;;

    6)
        printf '%b\n' "${RED}${BOLD}[✓] Thanks for using NexyonCloud!${RESET}"
        exit 0
        ;;

    *)
        printf '%b\n' "${RED}${BOLD}[✗] Invalid option!${RESET}"
        exit 1
        ;;

esac
