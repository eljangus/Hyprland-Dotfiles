#! /bin/bash

killall nwg-dock-hyprland
sleep 0.3s
nwg-dock-hyprland -l overlay -mr 10 -lp 'start' -w 10 -c 'rofi -show drun' -i 48 -iw '-98' -o DP-3 -d -hd 20 -ico "/home/$USER/.config/nwg-dock-hyprland/logo2.png" -p right
