#!/bin/bash

clear

# ==============================
# COLORS
# ==============================
BLUE='\033[1;34m'
LIGHT_BLUE='\033[1;36m'
CYAN='\033[1;36m'
YELLOW='\033[1;33m'
WHITE='\033[1;37m'
PURPLE='\033[1;35m'
GREEN='\033[1;32m'
RED='\033[1;31m'
RESET='\033[0m'
BOLD='\033[1m'

# ==============================
# LOGO
# ==============================
printf '%b' "${BLUE}${BOLD}"
cat <<'EOF'
 _   _ ________   ____     ______  _   _    _____ _      ____  _    _ _____
| \ | |  ____\ \ / /\ \   / / __ \| \ | |  / ____| |    / __ \| |  | |  __ \
|  \| | |__   \ V /  \ \_/ / |  | |  \| | | |    | |   | |  | | |  | | |  | |
| . ` |  __|   > <    \   /| |  | | . ` | | |    | |   | |  | | |  | | |  | |
| |\  | |____ / . \    | | | |__| | |\  | | |____| |___| |__| | |__| | |__| |
|_| \_|______/_/ \_\   |_|  \____/|_| \_|  \_____|______\____/ \____/|_____/
EOF
printf '%b\n' "${RESET}"

# ==============================
# TITLE
# ==============================
printf '%b\n' "${WHITE}${BOLD}              P A N E L   ${BLUE}I N S T A L L E R${RESET}"
printf '%b\n' "${WHITE}${BOLD}                 Power by ${PURPLE}NexyonCloud${RESET}"
printf '%b\n\n' "${WHITE}${BOLD}                    Made by ${GREEN}Hiro${RESET}"

# ==============================
# MENU HEADER
# ==============================
printf '%b\n' "${LIGHT_BLUE}${BOLD}          ╭──────────────────────────────────╮${RESET}"
printf '%b\n' "${LIGHT_BLUE}${BOLD}          │       NEXYONCLOUD INSTALLER      │${RESET}"
printf '%b\n' "${LIGHT_BLUE}${BOLD}          ╰──────────────────────────────────╯${RESET}"

printf '\n'

# ==============================
# MENU OPTIONS
# ==============================
printf '%b\n' "          ${WHITE}${BOLD}[1]${RESET}  ${CYAN}${BOLD}➜  Panel Installer${RESET}"
printf '%b\n' "          ${WHITE}${BOLD}[2]${RESET}  ${CYAN}${BOLD}➜  Wings Installer${RESET}"
printf '%b\n' "          ${WHITE}${BOLD}[3]${RESET}  ${CYAN}${BOLD}➜  Theme Installer${RESET}"
printf '%b\n' "          ${WHITE}${BOLD}[4]${RESET}  ${CYAN}${BOLD}➜  Extensions${RESET}"
printf '%b\n' "          ${WHITE}${BOLD}[5]${RESET}  ${CYAN}${BOLD}➜  Uninstall${RESET}"

printf '\n'

# ==============================
# EXIT
# ==============================
printf '%b\n' "          ${RED}${BOLD}[0]  ➜  Exit${RESET}"

printf '\n'

# ==============================
# SEPARATOR
# ==============================
printf '%b\n' "${LIGHT_BLUE}${BOLD}          ────────────────────────────────────${RESET}"

printf '\n'

# ==============================
# PROMPT
# ==============================
printf '%b' "${YELLOW}${BOLD}          ❯ Select an option [0-5]: ${RESET}"
read -r choice

# ==============================
# ACTION
# ==============================
case "$choice" in
    1)
        printf '\n%b\n' "${CYAN}${BOLD}          ✓ Panel Installer selected${RESET}"
        ;;
    2)
        printf '\n%b\n' "${CYAN}${BOLD}          ✓ Wings Installer selected${RESET}"
        ;;
    3)
        printf '\n%b\n' "${CYAN}${BOLD}          ✓ Theme Installer selected${RESET}"
        ;;
    4)
        printf '\n%b\n' "${CYAN}${BOLD}          ✓ Extensions selected${RESET}"
        ;;
    5)
        printf '\n%b\n' "${CYAN}${BOLD}          ✓ Uninstall selected${RESET}"
        ;;
    0)
        printf '\n%b\n' "${RED}${BOLD}          ✓ Thanks for using NexyonCloud!${RESET}"
        exit 0
        ;;
    *)
        printf '\n%b\n' "${RED}${BOLD}          ✗ Invalid option!${RESET}"
        ;;
esac
