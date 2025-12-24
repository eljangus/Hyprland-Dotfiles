#!/bin/bash
DIR="$HOME/.config/RofiScripts/Walls/Walls"

selected=$(ls "$DIR" | while read -r A; do
    echo -en "$A\x00icon\x1f$DIR/$A\n"
done | rofi -dmenu -i -m DP-3 -config '~/.config/RofiScripts/WallpaperChanger/WC.rasi')

[ -z "$selected" ] && exit 0

matugen image "$DIR/$selected" -m dark
ln -sfn "$DIR/$selected" ~/.config/RofiScripts/Walls/Wall
ln -sfn "$DIR/$selected" ~/.config/RofiScripts/WallpaperChanger/Wall
~/.config/nwg-dock-hyprland/launch.sh