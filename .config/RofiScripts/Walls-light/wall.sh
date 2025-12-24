#!/bin/bash
DIR="$HOME/.config/RofiScripts/Walls-light/Walls"

selected=$(ls "$DIR" | while read -r A; do
    echo -en "$A\x00icon\x1f$DIR/$A\n"
done | rofi -dmenu -i -m DP-3 -config '~/.config/RofiScripts/WallpaperChanger/WC.rasi')

[ -z "$selected" ] && exit 0

matugen image "$DIR/$selected" -m light
ln -sfn "$DIR/$selected" ~/.config/RofiScripts/Walls-light/Wall