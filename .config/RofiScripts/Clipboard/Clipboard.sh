#! /bin/bash

cliphist list | rofi -dmenu -display-columns 2 -config '~/.config/RofiScripts/Clipboard/CB.rasi' | cliphist decode | wl-copy