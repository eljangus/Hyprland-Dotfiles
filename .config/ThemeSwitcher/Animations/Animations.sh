#! /bin/bash

chosen=$(printf "Vertikale Animationen\nHorizontale Animationen\n" | rofi -dmenu -i -m DP-3 -config '~/.config/ThemeSwitcher/Animations/A.rasi')

case "$chosen" in
   "Horizontale Animationen") ~/.config/ThemeSwitcher/Animations/Horizontal/horizontal.sh ;;
   "Vertikale Animationen") ~/.config/ThemeSwitcher/Animations/Vertical/vertical.sh ;;
   *) exit 1 ;;
esac
