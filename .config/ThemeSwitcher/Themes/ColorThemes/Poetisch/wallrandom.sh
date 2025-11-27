#!/bin/bash

DIR="$HOME/.config/ThemeSwitcher/Themes/ColorThemes/Poetisch/Walls/BG"
LAST_WALLPAPER="$HOME/.config/RofiScripts/WallpaperChanger/Last_Wallpaper.txt"

files=("$DIR"/*)
[ ${#files[@]} -eq 0 ] && exit 0

last=""
[ -f "$LAST_WALLPAPER" ] && last=$(<"$LAST_WALLPAPER")

while true; do
    selected=$(find "$DIR" -type f | shuf -n 1)
    [ "$selected" != "$last" ] && break
done

swww img "$selected" \
    --transition-fps 240 \
    --transition-step 255 \
    --transition-duration 1 \
    --transition-type wipe \
    --transition-angle 225

ln -sf "$selected" ~/.config/ThemeSwitcher/Walls/Wall
ln -sf "$selected" ~/.config/ThemeSwitcher/Themes/ColorThemes/Poetisch/Walls/1

echo "$selected" > "$LAST_WALLPAPER"
