#! /bin/sh

chosen=$(printf "Dunkel\nHell\nRosé Pine Moon\nNord\nEarth\nEverforest\nNightfox\nTokyo Night\nGruvbox Hell\nGruvbox Dunkel\nPoetisch\nRot\nJade\nCatppuccin Mocha\n" | rofi -dmenu -i -m DP-3 -config '~/.config/ThemeSwitcher/Themes/TS.rasi')

case "$chosen" in
   "Rosé Pine Moon") ~/.config/ThemeSwitcher/Themes/ColorThemes/Rose-Pine/rose-pine.sh ;;
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
   "Catppuccin Mocha") ~/.config/ThemeSwitcher/Themes/ColorThemes/Catppuccin-Mocha/catmocha.sh ;;
esac
