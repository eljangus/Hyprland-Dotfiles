#! /bin/bash

chosen=$(printf "󱓞 Autostart\n󰪫 Umgebungsvariablen\n󰍽 Eingabe\n󰌌 Kurzbefehle\n Aussehen und Handhabung\n󰍹 Bildschirme\n Berechtigungen\n Programme\n Plugins\n Fenster und Arbeitsflächen\n󰥛 Animationen (Variabel!)\n󰘇 Dekorationen (Variabel!)\n" | rofi -dmenu -i -m DP-3 -config '~/.config/RofiScripts/SystemSettings/S.rasi')

case "$chosen" in
   "󱓞 Autostart") gnome-text-editor ~/.config/hypr/hyprconfigs/hyprautostart.conf ;;
   "󰪫 Umgebungsvariablen") gnome-text-editor ~/.config/hypr/hyprconfigs/hyprenvironment.conf ;;
   "󰍽 Eingabe") gnome-text-editor ~/.config/hypr/hyprconfigs/hyprinput.conf ;;
   "󰌌 Kurzbefehle") gnome-text-editor ~/.config/hypr/hyprconfigs/hyprkeybinds.conf ;;
   " Aussehen und Handhabung") gnome-text-editor ~/.config/hypr/hyprconfigs/hyprlookandfeel.conf ;;
   "󰍹 Bildschirme") gnome-text-editor ~/.config/hypr/hyprconfigs/hyprmonitors.conf ;;
   " Berechtigungen") gnome-text-editor ~/.config/hypr/hyprconfigs/hyprpermissions.conf ;;
   " Programme") gnome-text-editor ~/.config/hypr/hyprconfigs/hyprprograms.conf ;;
   " Plugins") gnome-text-editor ~/.config/hypr/hyprconfigs/hyprplugins.conf ;;
   " Fenster und Arbeitsflächen") gnome-text-editor ~/.config/hypr/hyprconfigs/hyprwindowsandworkspaces.conf ;;
   "󰘇 Dekorationen (Variabel!)") gnome-text-editor ~/.config/hypr/hyprconfigs/hyprdecoration.conf ;;
   "󰥛 Animationen (Variabel!)") gnome-text-editor ~/.config/hypr/hyprconfigs/hypranimations.conf ;;
   *) exit 1 ;;
esac
