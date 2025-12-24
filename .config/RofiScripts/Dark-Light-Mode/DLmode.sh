#! /bin/bash

chosen=$(printf "Dunkler Modus\nHeller Modus\n" | rofi -dmenu -i -m DP-3 -config '~/.config/RofiScripts/Animations/A.rasi')

case "$chosen" in
   "Dunkler Modus") ~/.config/RofiScripts/Dark-Light-Mode/Dunkel/dunkel.sh && ~/.config/nwg-dock-hyprland/launch.sh ;;
   "Heller Modus") ~/.config/RofiScripts/Dark-Light-Mode/Hell/hell.sh && ~/.config/nwg-dock-hyprland/launch.sh ;;
   *) exit 1 ;;
esac
