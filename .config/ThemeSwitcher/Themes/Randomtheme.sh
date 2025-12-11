#!/bin/bash

LAST_FILE="$HOME/.config/ThemeSwitcher/Themes/Last_Random_Theme.txt"

# Define theme names exactly as in your case statement
themes=(
    "Rosé Pine Moon Dark"
    "Nord"
    "Earth"
    "Everforest"
    "Nightfox"
    "Tokyo Night"
    "Gruvbox Hell"
    "Gruvbox Dunkel"
    "Poetisch"
    "Rot"
    "Jade"
    "Dunkel"
    "Hell"
)

# Load last choice
last=""
[ -f "$LAST_FILE" ] && last=$(<"$LAST_FILE")

# Pick random theme not equal to last
while true; do
    choice="${themes[RANDOM % ${#themes[@]}]}"
    [ "$choice" != "$last" ] && break
done

# Save selection
echo "$choice" > "$LAST_FILE"

# Execute correct script
case "$choice" in
   "Rosé Pine Moon Dark") ~/.config/ThemeSwitcher/Themes/ColorThemes/Rose-Pine/rose-pine.sh ;;
   "Nord") ~/.config/ThemeSwitcher/Themes/ColorThemes/Nord/nord.sh ;;
   "Earth") ~/.config/ThemeSwitcher/Themes/ColorThemes/Earth/earth.sh ;;
   "Everforest") ~/.config/ThemeSwitcher/Themes/ColorThemes/Everforest/everforest.sh ;;
   "Nightfox") ~/.config/ThemeSwitcher/Themes/ColorThemes/Nightfox/nightfox.sh ;;
   "Tokyo Night") ~/.config/ThemeSwitcher/Themes/ColorThemes/Tokyo-Night/tokyonight.sh ;;
   "Gruvbox Hell") ~/.config/ThemeSwitcher/Themes/ColorThemes/Gruvbox-Light/gruvboxlight.sh ;;
   "Gruvbox Dunkel") ~/.config/ThemeSwitcher/Themes/ColorThemes/Gruvbox-Dark/gruvboxdark.sh ;;
   "Poetisch") ~/.config/ThemeSwitcher/Themes/ColorThemes/Poetisch/poetisch.sh ;;
   "Rot") ~/.config/ThemeSwitcher/Themes/ColorThemes/Rot/rot.sh ;;
   "Jade") ~/.config/ThemeSwitcher/Themes/ColorThemes/Jade/jade.sh ;;
   "Dunkel") ~/.config/ThemeSwitcher/Themes/ColorThemes/Dark/dark.sh ;;
   "Hell") ~/.config/ThemeSwitcher/Themes/ColorThemes/Hell/hell.sh ;;
esac

