#! /bin/bash

chosen=$(printf "󱓞 Autostart\n󰪫 Umgebungsvariablen\n󰍽 Eingabe\n󰌌 Kurzbefehle\n Aussehen und Handhabung\n󰍹 Bildschirme\n Berechtigungen\n Programme\n Plugins\n Fenster und Arbeitsflächen\n󰥛 Animationen (Variabel!)\n󰘇 Dekorationen (Variabel!)\n" | rofi -dmenu -i -m DP-3 -config '~/.config/RofiScripts/SystemSettings/S.rasi')

case "$chosen" in
   "󱓞 Autostart") code ~/.config/hypr/hyprconfigs/hyprautostart.conf ;;
   "󰪫 Umgebungsvariablen") code ~/.config/hypr/hyprconfigs/hyprenvironment.conf ;;
   "󰍽 Eingabe") code ~/.config/hypr/hyprconfigs/hyprinput.conf ;;
   "󰌌 Kurzbefehle") code ~/.config/hypr/hyprconfigs/hyprkeybinds.conf ;;
   " Aussehen und Handhabung") code ~/.config/hypr/hyprconfigs/hyprlookandfeel.conf ;;
   "󰍹 Bildschirme") code ~/.config/hypr/hyprconfigs/hyprmonitors.conf ;;
   " Berechtigungen") code ~/.config/hypr/hyprconfigs/hyprpermissions.conf ;;
   " Programme") code ~/.config/hypr/hyprconfigs/hyprprograms.conf ;;
   " Plugins") code ~/.config/hypr/hyprconfigs/hyprplugins.conf ;;
   " Fenster und Arbeitsflächen") code ~/.config/hypr/hyprconfigs/hyprwindowsandworkspaces.conf ;;
   "󰘇 Dekorationen (Variabel!)") code ~/.config/hypr/hyprconfigs/hyprdecoration.conf ;;
   "󰥛 Animationen (Variabel!)") code ~/.config/hypr/hyprconfigs/hypranimations.conf ;;
   *) exit 1 ;;
esac
