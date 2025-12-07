#! /bin/bash

chosen=$(printf "󰌧 Hintergrundbild Auswählen\n Zufälliges Hintergrundbild\n" | rofi -dmenu -i -m DP-3 -config '~/.config/RofiScripts/WallpaperChanger/WM.rasi')

case "$chosen" in
   "󰌧 Hintergrundbild Auswählen") ~/.config/RofiScripts/WallpaperChanger/wall.sh ;;
   " Zufälliges Hintergrundbild") ~/.config/RofiScripts/WallpaperChanger/wallrandom.sh ;;
   *) exit 1 ;;
esac
