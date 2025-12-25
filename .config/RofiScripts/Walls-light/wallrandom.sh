#!/bin/bash

DIR="$HOME/.config/RofiScripts/Walls-light/Walls"
LAST_WALLPAPER="$HOME/.config/RofiScripts/Walls-light/Last_Wallpaper.txt"

files=("$DIR"/*)
[ ${#files[@]} -eq 0 ] && exit 0

last=""
[ -f "$LAST_WALLPAPER" ] && last=$(<"$LAST_WALLPAPER")

while true; do
    selected=$(find "$DIR" -type f | shuf -n 1)
    [ "$selected" != "$last" ] && break
done

matugen image "$selected" -m light -t scheme-content --fallback-color grey

ln -sfn "$selected" ~/.config/RofiScripts/Walls-light/Wall
ln -sfn "$selected" ~/.config/RofiScripts/WallpaperChanger/Wall
echo "$selected" > "$LAST_WALLPAPER"

~/.config/nwg-dock-hyprland/launch.sh