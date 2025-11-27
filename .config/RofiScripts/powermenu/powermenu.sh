#! /bin/sh

chosen=$(printf "󰐥\n󰜉\n󰌾\n󰀄" | rofi -dmenu -i -config '~/.config/RofiScripts/powermenu/P.rasi')

case "$chosen" in
   "󰐥") poweroff ;;
   "󰜉") reboot ;;
   "󰌾") hyprlock ;;
   "󰀄") hyprctl dispatch exit ;;
   *) exit 1 ;;
esac
