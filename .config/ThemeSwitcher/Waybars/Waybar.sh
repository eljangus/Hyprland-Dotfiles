#! /bin/sh

chosen=$(printf "Balken\nBalken (Umrandung)\nSchwebend\nSchwebend (Umrandung)\nAngedockt\nAngedockt (Umrandung)\nEckig\nEckig (Umrandung)\nBalken | Vertikal\nBalken (Umrandung) | Vertikal\nEckig | Vertikal\nEckig (Umrandung) | Vertikal\n" | rofi -dmenu -i -m DP-3 -config '~/.config/ThemeSwitcher/Waybars/WB.rasi')

case "$chosen" in
   "Balken") ~/.config/ThemeSwitcher/Waybars/WaybarThemes/waybar-bar/bar.sh ;;
   "Balken (Umrandung)") ~/.config/ThemeSwitcher/Waybars/WaybarThemes/waybar-bar-border/bar-border.sh ;;
   "Schwebend") ~/.config/ThemeSwitcher/Waybars/WaybarThemes/waybar-float/float.sh ;;
   "Schwebend (Umrandung)") ~/.config/ThemeSwitcher/Waybars/WaybarThemes/waybar-float-border/float-border.sh ;;
   "Angedockt") ~/.config/ThemeSwitcher/Waybars/WaybarThemes/docked/docked.sh ;;
   "Angedockt (Umrandung)") ~/.config/ThemeSwitcher/Waybars/WaybarThemes/docked-border/docked-border.sh ;;
   "Eckig") ~/.config/ThemeSwitcher/Waybars/WaybarThemes/waybar-bar-pointy/barpointy.sh ;;
   "Eckig (Umrandung)") ~/.config/ThemeSwitcher/Waybars/WaybarThemes/waybar-bar-pointy-border/bar-borderpointy.sh ;;
   "Balken | Vertikal") ~/.config/ThemeSwitcher/Waybars/WaybarThemes/waybar-bar-vertical/bar-vertical.sh ;;
   "Balken (Umrandung) | Vertikal") ~/.config/ThemeSwitcher/Waybars/WaybarThemes/waybar-bar-border-vertical/bar-border-vertical.sh ;;
   "Eckig | Vertikal") ~/.config/ThemeSwitcher/Waybars/WaybarThemes/waybar-bar-pointy-vertical/bar-pointy-vertical.sh ;;
   "Eckig (Umrandung) | Vertikal") ~/.config/ThemeSwitcher/Waybars/WaybarThemes/waybar-bar-pointy-border-vertical/bar-borderpointy-vertical.sh ;;
   *) exit 1 ;;
esac