#!/bin/bash

DIR="$HOME/.config/RofiScripts/Walls/Walls"
LAST_WALLPAPER="$HOME/.config/RofiScripts/Walls/Last_Wallpaper.txt"

files=("$DIR"/*)
[ ${#files[@]} -eq 0 ] && exit 0

last=""
[ -f "$LAST_WALLPAPER" ] && last=$(<"$LAST_WALLPAPER")

while true; do
    selected=$(find "$DIR" -type f | shuf -n 1)
    [ "$selected" != "$last" ] && break
done

matugen image "$selected" -m dark

ln -sfn "$selected" ~/.config/RofiScripts/Walls/Wall

echo "$selected" > "$LAST_WALLPAPER"
