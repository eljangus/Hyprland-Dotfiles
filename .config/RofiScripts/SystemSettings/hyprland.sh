#! /bin/sh

chosen=$(printf "󱓞 Autostart\n󰪫 Umgebungsvariablen\n󰍽 Eingabe\n󰌌 Kurzbefehle\n Aussehen und Handhabung\n󰍹 Bildschirme\n Berechtigungen\n Programme\n Plugins\n Fenster und Arbeitsflächen\n󰥛 Animationen (Variabel!)\n󰘇 Dekorationen (Variabel!)\n" | rofi -dmenu -i -m DP-3 -config '~/.config/RofiScripts/SystemSettings/S.rasi')

case "$chosen" in
   "󱓞 Autostart") codium ~/.config/hypr/hyprconfigs/hyprautostart.conf ;;
   "󰪫 Umgebungsvariablen") codium ~/.config/hypr/hyprconfigs/hyprenvironment.conf ;;
   "󰍽 Eingabe") codium ~/.config/hypr/hyprconfigs/hyprinput.conf ;;
   "󰌌 Kurzbefehle") codium ~/.config/hypr/hyprconfigs/hyprkeybinds.conf ;;
   " Aussehen und Handhabung") codium ~/.config/hypr/hyprconfigs/hyprlookandfeel.conf ;;
   "󰍹 Bildschirme") codium ~/.config/hypr/hyprconfigs/hyprmonitors.conf ;;
   " Berechtigungen") codium ~/.config/hypr/hyprconfigs/hyprpermissions.conf ;;
   " Programme") codium ~/.config/hypr/hyprconfigs/hyprprograms.conf ;;
   " Plugins") codium ~/.config/hypr/hyprconfigs/hyprplugins.conf ;;
   " Fenster und Arbeitsflächen") codium ~/.config/hypr/hyprconfigs/hyprwindowsandworkspaces.conf ;;
   "󰘇 Dekorationen (Variabel!)") codium ~/.config/hypr/hyprconfigs/hyprdecoration.conf ;;
   "󰥛 Animationen (Variabel!)") codium ~/.config/hypr/hyprconfigs/hypranimations.conf ;;
   *) exit 1 ;;
esac
