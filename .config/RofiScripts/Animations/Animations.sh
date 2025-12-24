#! /bin/bash

chosen=$(printf "Vertikale Animationen\nHorizontale Animationen\n" | rofi -dmenu -i -m DP-3 -config '~/.config/RofiScripts/Animations/A.rasi')

case "$chosen" in
   "Horizontale Animationen") ~/.config/RofiScripts/Animations/Horizontal/horizontal.sh ;;
   "Vertikale Animationen") ~/.config/RofiScripts/Animations/Vertical/vertical.sh ;;
   *) exit 1 ;;
esac
