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
# CENTER PLAIN TEXT
# ==============================
center_plain() {
    local text="$1"
    local length=${#text}

    local padding=$(( (TERM_WIDTH - length) / 2 ))

    [ "$padding" -lt 0 ] && padding=0

    printf "%*s%s\n" "$padding" "" "$text"
}

# ==============================
# CENTER COLORED TEXT
# ==============================
center_colored() {
    local color="$1"
    local text="$2"

    local length=${#text}
    local padding=$(( (TERM_WIDTH - length) / 2 ))

    [ "$padding" -lt 0 ] && padding=0

    printf '%b%*s%s%b\n' \
        "$color" \
        "$padding" "" \
        "$text" \
        "$RESET"
}

# ==============================
# LOGO
# ==============================
LOGO=(
' _   _ ________   ____     ______  _   _    _____ _      ____  _    _ _____'
'| \ | |  ____\ \ / /\ \   / / __ \| \ | |  / ____| |    / __ \| |  | |  __ \'
'|  \| | |__   \ V /  \ \_/ / |  | |  \| | | |    | |   | |  | | |  | | |  | |'
'| . ` |  __|   > <    \   /| |  | | . ` | | |    | |   | |  | | |  | | |  | |'
'| |\  | |____ / . \    | | | |__| | |\  | | |____| |___| |__| | |__| | |__| |'
'|_| \_|______/_/ \_\   |_|  \____/|_| \_|  \_____|______\____/ \____/|_____|'
)

# ==============================
# PRINT LOGO
# ==============================
printf '%b' "${BLUE}${BOLD}"

for line in "${LOGO[@]}"; do
    center_plain "$line"
done

printf '%b\n' "${RESET}"

# ==============================
# TITLE
# ==============================
center_colored \
    "${WHITE}${BOLD}" \
    "P A N E L   I N S T A L L E R"

center_colored \
    "${WHITE}${BOLD}" \
    "Power by NexyonCloud"

center_colored \
    "${WHITE}${BOLD}" \
    "Made by Hiro"

printf '\n'

# ==============================
# MENU BOX
# ==============================
BOX_TOP="╭──────────────────────────────────╮"
BOX_TEXT="│       NEXYONCLOUD INSTALLER      │"
BOX_BOTTOM="╰──────────────────────────────────╯"

center_colored "${LIGHT_BLUE}${BOLD}" "$BOX_TOP"
center_colored "${LIGHT_BLUE}${BOLD}" "$BOX_TEXT"
center_colored "${LIGHT_BLUE}${BOLD}" "$BOX_BOTTOM"

printf '\n'

# ==============================
# MENU OPTIONS
# ==============================
center_colored "${CYAN}${BOLD}" "[1]  ➜  Panel Installer"
center_colored "${CYAN}${BOLD}" "[2]  ➜  Wings Installer"
center_colored "${CYAN}${BOLD}" "[3]  ➜  Theme Installer"
center_colored "${CYAN}${BOLD}" "[4]  ➜  Extensions"
center_colored "${CYAN}${BOLD}" "[5]  ➜  Uninstall"

printf '\n'

# ==============================
# EXIT
# ==============================
center_colored "${RED}${BOLD}" "[0]  ➜  Exit"

printf '\n'

# ==============================
# SEPARATOR
# ==============================
SEPARATOR="──────────────────────────────────────────"

center_colored "${LIGHT_BLUE}${BOLD}" "$SEPARATOR"

printf '\n'

# ==============================
# PROMPT
# ==============================
PROMPT="❯ Select an option [0-5]:"

PROMPT_LENGTH=${#PROMPT}
PROMPT_PADDING=$(( (TERM_WIDTH - PROMPT_LENGTH) / 2 ))

[ "$PROMPT_PADDING" -lt 0 ] && PROMPT_PADDING=0

printf '%b%*s%s %b' \
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
        printf '\n'
        center_colored "${CYAN}${BOLD}" "✓ Panel Installer selected"
        ;;

    2)
        printf '\n'
        center_colored "${CYAN}${BOLD}" "✓ Wings Installer selected"
        ;;

    3)
        printf '\n'
        center_colored "${CYAN}${BOLD}" "✓ Theme Installer selected"
        ;;

    4)
        printf '\n'
        center_colored "${CYAN}${BOLD}" "✓ Extensions selected"
        ;;

    5)
        printf '\n'
        center_colored "${CYAN}${BOLD}" "✓ Uninstall selected"
        ;;

    0)
        printf '\n'
        center_colored "${RED}${BOLD}" "✓ Thanks for using NexyonCloud!"
        exit 0
        ;;

    *)
        printf '\n'
        center_colored "${RED}${BOLD}" "✗ Invalid option!"
        ;;

esac
