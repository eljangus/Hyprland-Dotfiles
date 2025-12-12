#! /bin/sh

chosen=$(printf "Eckig\n" | rofi -dmenu -i -m DP-3 -config '~/.config/ThemeSwitcher/Waybars/WB.rasi')

case "$chosen" in
   "Abgerundet") ~/.config/ThemeSwitcher/Waybars/WaybarThemes/waybar-bar/bar.sh & ~/.config/nwg-dock-hyprland/launch.sh ;;
   "Balken (Umrandung)") ~/.config/ThemeSwitcher/Waybars/WaybarThemes/waybar-bar-border/bar-border.sh & ~/.config/nwg-dock-hyprland/launch.sh ;;
   "Schwebend") ~/.config/ThemeSwitcher/Waybars/WaybarThemes/waybar-float/float.sh & ~/.config/nwg-dock-hyprland/launch.sh ;;
   "Schwebend (Umrandung)") ~/.config/ThemeSwitcher/Waybars/WaybarThemes/waybar-float-border/float-border.sh & ~/.config/nwg-dock-hyprland/launch.sh ;;
   "Angedockt") ~/.config/ThemeSwitcher/Waybars/WaybarThemes/docked/docked.sh & ~/.config/nwg-dock-hyprland/launch.sh ;;
   "Angedockt (Umrandung)") ~/.config/ThemeSwitcher/Waybars/WaybarThemes/docked-border/docked-border.sh & ~/.config/nwg-dock-hyprland/launch.sh ;;
   "Eckig") ~/.config/ThemeSwitcher/Waybars/WaybarThemes/waybar-bar-pointy/barpointy.sh & ~/.config/nwg-dock-hyprland/launch.sh ;;
   "Eckig (Umrandung)") ~/.config/ThemeSwitcher/Waybars/WaybarThemes/waybar-bar-pointy-border/bar-borderpointy.sh & ~/.config/nwg-dock-hyprland/launch.sh ;;
   "Balken | Vertikal") ~/.config/ThemeSwitcher/Waybars/WaybarThemes/waybar-bar-vertical/bar-vertical.sh & ~/.config/nwg-dock-hyprland/launch.sh ;;
   "Balken (Umrandung) | Vertikal") ~/.config/ThemeSwitcher/Waybars/WaybarThemes/waybar-bar-border-vertical/bar-border-vertical.sh & ~/.config/nwg-dock-hyprland/launch.sh ;;
   "Eckig | Vertikal") ~/.config/ThemeSwitcher/Waybars/WaybarThemes/waybar-bar-pointy-vertical/bar-pointy-vertical.sh & ~/.config/nwg-dock-hyprland/launch.sh ;;
   "Eckig (Umrandung) | Vertikal") ~/.config/ThemeSwitcher/Waybars/WaybarThemes/waybar-bar-pointy-border-vertical/bar-borderpointy-vertical.sh & ~/.config/nwg-dock-hyprland/launch.sh ;;
   *) exit 1 ;;
esac
