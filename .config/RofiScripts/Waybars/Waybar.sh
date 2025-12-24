#! /bin/sh

chosen=$(printf "Balken\n" | rofi -dmenu -i -m DP-3 -config '~/.config/RofiScripts/Waybars/WB.rasi')

case "$chosen" in
   "Zacken") ~/.config/RofiScripts/Waybars/WaybarThemes/waybar-bar-pointy/barpointy.sh & ~/.config/RofiScripts/Waybars/WaybarThemes/waybar-bar-pointy/launch.sh ;;
   "Fliegende Inseln") ~/.config/RofiScripts/Waybars/WaybarThemes/flying-islands/islands.sh & ~/.config/RofiScripts/Waybars/WaybarThemes/flying-islands/launch.sh  ;;
   "Vertikal") ~/.config/RofiScripts/Waybars/WaybarThemes/vertical/vertical.sh & ~/.config/RofiScripts/Waybars/WaybarThemes/vertical/launch.sh ;;
   "Balken") ~/.config/RofiScripts/Waybars/WaybarThemes/bar/bar.sh & ~/.config/RofiScripts/Waybars/WaybarThemes/bar/launch.sh ;;
   *) exit 1 ;;
esac
