#! /bin/sh

chosen=$(printf " Hyprland\n NixOS" | rofi -dmenu -i -m DP-3 -config '~/.config/RofiScripts/SystemSettings/S.rasi')

case "$chosen" in
   " Hyprland") ~/.config/RofiScripts/SystemSettings/hyprland.sh ;;
   " NixOS") ~/.config/RofiScripts/SystemSettings/nixos.sh ;;
   *) exit 1 ;;
esac
