#! /bin/sh

chosen=$(printf "Zacken\n" | rofi -dmenu -i -m DP-3 -config '~/.config/ThemeSwitcher/Waybars/WB.rasi')

case "$chosen" in
   "Zacken") ~/.config/ThemeSwitcher/Waybars/WaybarThemes/waybar-bar-pointy/barpointy.sh & ~/.config/nwg-dock-hyprland/launch.sh ;;
   *) exit 1 ;;
esac
