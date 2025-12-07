#! /bin/bash

chosen=$(printf "Eckig\nSanftes Rund\nRund\n" | rofi -dmenu -i -m DP-3 -config '~/.config/ThemeSwitcher/Rounding/R.rasi')

case "$chosen" in
   "Eckig") ~/.config/ThemeSwitcher/Rounding/RoundingThemes/0px/pointy.sh ;;
   "Sanftes Rund") ~/.config/ThemeSwitcher/Rounding/RoundingThemes/10px/softround.sh ;;
   "Rund") ~/.config/ThemeSwitcher/Rounding/RoundingThemes/20px/round.sh ;;
   *) exit 1 ;;
esac
