#! /bin/bash

chosen=$(printf " Anwendungsstarter\n System\n󰅌 Zwischenablage\n󰃬 Taschenrechner\n Farbschema\n Waybar\n󰘇 Dekorationen\n󰥛 Animationen\n Hintergrundbild\n" | rofi -dmenu -i -m DP-3 -config '~/.config/RofiScripts/Launcher/L.rasi')

case "$chosen" in
   " Anwendungsstarter") rofi -show drun -m DP-3 ;;
   " System") ~/.config/RofiScripts/SystemSettings/system.sh ;;
   "󰅌 Zwischenablage") ~/.config/RofiScripts/Clipboard/Clipboard.sh ;;
   "󰃬 Taschenrechner") ~/.config/RofiScripts/RofiCalc/Calc.sh ;;
   " Farbschema") ~/.config/ThemeSwitcher/Themes/Theme.sh ;;
   " Waybar") ~/.config/ThemeSwitcher/Waybars/Waybar.sh ;;
   "󰘇 Dekorationen") ~/.config/ThemeSwitcher/Rounding/Rounding.sh ;;
   "󰥛 Animationen") ~/.config/ThemeSwitcher/Animations/Animations.sh ;;
   " Hintergrundbild") ~/.config/RofiScripts/WallpaperChanger/WallMenu.sh ;;
   *) exit 1 ;;
esac
