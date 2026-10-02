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
# TERMINAL WIDTH
# ==============================
TERM_WIDTH=$(tput cols 2>/dev/null || echo 80)

# ==============================
# CENTER FUNCTION
# ==============================
center_text() {
    local text="$1"
    local width="$2"

    if [ "$width" -gt "$TERM_WIDTH" ]; then
        width="$TERM_WIDTH"
    fi

    local padding=$(( (TERM_WIDTH - width) / 2 ))

    printf "%*s%s\n" "$padding" "" "$text"
}

# ==============================
# LOGO
# ==============================
LOGO='
 _   _ ________   ____     ______  _   _    _____ _      ____  _    _ _____
| \ | |  ____\ \ / /\ \   / / __ \| \ | |  / ____| |    / __ \| |  | |  __ \
|  \| | |__   \ V /  \ \_/ / |  | |  \| | | |    | |   | |  | | |  | | |  | |
| . ` |  __|   > <    \   /| |  | | . ` | | |    | |   | |  | | |  | | |  | |
| |\  | |____ / . \    | | | |__| | |\  | | |____| |___| |__| | |__| | |__| |
|_| \_|______/_/ \_\   |_|  \____/|_| \_|  \_____|______\____/ \____/|_____/
'

printf '%b' "${BLUE}${BOLD}"

while IFS= read -r line; do
    center_text "$line" 78
done <<< "$LOGO"

printf '%b\n' "${RESET}"

# ==============================
# TITLE
# ==============================
center_text "${WHITE}${BOLD}P A N E L   ${BLUE}I N S T A L L E R${RESET}" 50

center_text "${WHITE}${BOLD}Power by ${PURPLE}NexyonCloud${RESET}" 40

center_text "${WHITE}${BOLD}Made by ${GREEN}Hiro${RESET}" 35

printf '\n'

# ==============================
# MENU BOX
# ==============================
BOX_WIDTH=42
BOX_PADDING=$(( (TERM_WIDTH - BOX_WIDTH) / 2 ))

printf '%b%*s╭──────────────────────────────────────╮%b\n' \
    "${LIGHT_BLUE}${BOLD}" "$BOX_PADDING" "" "${RESET}"

printf '%b%*s│       NEXYONCLOUD INSTALLER         │%b\n' \
    "${LIGHT_BLUE}${BOLD}" "$BOX_PADDING" "" "${RESET}"

printf '%b%*s╰──────────────────────────────────────╯%b\n' \
    "${LIGHT_BLUE}${BOLD}" "$BOX_PADDING" "" "${RESET}"

printf '\n'

# ==============================
# MENU OPTIONS
# ==============================
MENU_PADDING=$(( (TERM_WIDTH - 38) / 2 ))

printf '%b%*s%b[1]%b  ➜  Panel Installer%b\n' \
    "${WHITE}${BOLD}" "$MENU_PADDING" "" \
    "${WHITE}${BOLD}" "${CYAN}${BOLD}" "${RESET}"

printf '%b%*s%b[2]%b  ➜  Wings Installer%b\n' \
    "${WHITE}${BOLD}" "$MENU_PADDING" "" \
    "${WHITE}${BOLD}" "${CYAN}${BOLD}" "${RESET}"

printf '%b%*s%b[3]%b  ➜  Theme Installer%b\n' \
    "${WHITE}${BOLD}" "$MENU_PADDING" "" \
    "${WHITE}${BOLD}" "${CYAN}${BOLD}" "${RESET}"

printf '%b%*s%b[4]%b  ➜  Extensions%b\n' \
    "${WHITE}${BOLD}" "$MENU_PADDING" "" \
    "${WHITE}${BOLD}" "${CYAN}${BOLD}" "${RESET}"

printf '%b%*s%b[5]%b  ➜  Uninstall%b\n' \
    "${WHITE}${BOLD}" "$MENU_PADDING" "" \
    "${WHITE}${BOLD}" "${CYAN}${BOLD}" "${RESET}"

printf '\n'

# ==============================
# EXIT
# ==============================
printf '%b%*s%b[0]%b  ➜  Exit%b\n' \
    "${RED}${BOLD}" "$MENU_PADDING" "" \
    "${RED}${BOLD}" "${RED}${BOLD}" "${RESET}"

printf '\n'

# ==============================
# SEPARATOR
# ==============================
LINE_PADDING=$(( (TERM_WIDTH - 42) / 2 ))

printf '%b%*s──────────────────────────────────────────%b\n' \
    "${LIGHT_BLUE}${BOLD}" "$LINE_PADDING" "" "${RESET}"

printf '\n'

# ==============================
# PROMPT
# ==============================
PROMPT='❯ Select an option [0-5]: '

PROMPT_LENGTH=${#PROMPT}
PROMPT_PADDING=$(( (TERM_WIDTH - PROMPT_LENGTH) / 2 ))

printf '%b%*s%s%b' \
    "${YELLOW}${BOLD}" \
    "$PROMPT_PADDING" "" \
    "$PROMPT" \
    "${RESET}"

read -r choice

# ==============================
# ACTION
# ==============================
case "$choice" in

    1)
        center_text "${CYAN}${BOLD}✓ Panel Installer selected${RESET}" 40
        ;;

    2)
        center_text "${CYAN}${BOLD}✓ Wings Installer selected${RESET}" 40
        ;;

    3)
        center_text "${CYAN}${BOLD}✓ Theme Installer selected${RESET}" 40
        ;;

    4)
        center_text "${CYAN}${BOLD}✓ Extensions selected${RESET}" 40
        ;;

    5)
        center_text "${CYAN}${BOLD}✓ Uninstall selected${RESET}" 40
        ;;

    0)
        printf '\n'
        center_text "${RED}${BOLD}✓ Thanks for using NexyonCloud!${RESET}" 45
        exit 0
        ;;

    *)
        printf '\n'
        center_text "${RED}${BOLD}✗ Invalid option!${RESET}" 35
        ;;

esac
