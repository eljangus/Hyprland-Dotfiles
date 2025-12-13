#! /bin/bash

killall nwg-dock-hyprland
sleep 0.3s
nwg-dock-hyprland -l overlay -mb 0 -lp 'start' -w 10 -c 'rofi -show drun' -i 48 -iw '-98' -o DP-3 -x -hd 20 -ico "/home/$USER/.config/nwg-dock-hyprland/logo2.png"
