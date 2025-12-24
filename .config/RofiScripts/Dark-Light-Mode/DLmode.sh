#! /bin/bash

chosen=$(printf "Dunkler Modus\nHeller Modus\n" | rofi -dmenu -i -m DP-3 -config '~/.config/RofiScripts/Animations/A.rasi')

case "$chosen" in
   "Dunkler Modus") ~/.config/RofiScripts/Dark-Light-Mode/Dunkel/dunkel.sh ;;
   "Heller Modus") ~/.config/RofiScripts/Dark-Light-Mode/Hell/hell.sh ;;
   *) exit 1 ;;
esac
