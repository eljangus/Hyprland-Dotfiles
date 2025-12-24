#! /bin/bash

chosen=$(printf " Anwendungsstarter\n System\n󰅌 Zwischenablage\n󰃬 Taschenrechner\n Waybar\n Farbschema\n󰘇 Dekorationen\n󰥛 Animationen\n Hintergrundbild\n" | rofi -dmenu -i -m DP-3 -config '~/.config/RofiScripts/Launcher/L.rasi')

case "$chosen" in
   " Anwendungsstarter") rofi -show drun -m DP-3 ;;
   " System") ~/.config/RofiScripts/SystemSettings/system.sh ;;
   "󰅌 Zwischenablage") ~/.config/RofiScripts/Clipboard/Clipboard.sh ;;
   "󰃬 Taschenrechner") ~/.config/RofiScripts/RofiCalc/Calc.sh ;;
   " Waybar") ~/.config/RofiScripts/Waybars/Waybar.sh ;;
   " Farbschema") ~/.config/RofiScripts/Dark-Light-Mode/DLmode.sh ;;
   "󰘇 Dekorationen") ~/.config/RofiScripts/Rounding/Rounding.sh ;;
   "󰥛 Animationen") ~/.config/RofiScripts/Animations/Animations.sh ;;
   " Hintergrundbild") ~/.config/RofiScripts/WallpaperChanger/WallMenu.sh ;;
   *) exit 1 ;;
esac
