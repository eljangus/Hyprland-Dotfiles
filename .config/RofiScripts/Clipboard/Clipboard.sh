#! /bin/sh

cliphist list | rofi -dmenu -m DP-3 -display-columns 2 -config '~/.config/RofiScripts/Clipboard/CB.rasi' | cliphist decode | wl-copy