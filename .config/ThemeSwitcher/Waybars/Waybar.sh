#! /bin/sh

chosen=$(printf "Zacken\nFliegende Inseln\nVertikal\n" | rofi -dmenu -i -m DP-3 -config '~/.config/ThemeSwitcher/Waybars/WB.rasi')

case "$chosen" in
   "Zacken") ~/.config/ThemeSwitcher/Waybars/WaybarThemes/waybar-bar-pointy/barpointy.sh & ~/.config/ThemeSwitcher/Waybars/WaybarThemes/waybar-bar-pointy/launch.sh ;;
   "Fliegende Inseln") ~/.config/ThemeSwitcher/Waybars/WaybarThemes/flying-islands/islands.sh & ~/.config/ThemeSwitcher/Waybars/WaybarThemes/flying-islands/launch.sh  ;;
   "Vertikal") ~/.config/ThemeSwitcher/Waybars/WaybarThemes/vertical/vertical.sh & ~/.config/ThemeSwitcher/Waybars/WaybarThemes/vertical/launch.sh ;;
   *) exit 1 ;;
esac
