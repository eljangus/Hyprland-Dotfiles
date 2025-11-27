#!/bin/bash
DIR="$HOME/.config/ThemeSwitcher/Themes/ColorThemes/Tokyo-Night/Walls/BG"

selected=$(ls "$DIR" | while read -r A; do
    echo -en "$A\x00icon\x1f$DIR/$A\n"
done | rofi -dmenu -i -m DP-3 -config '~/.config/RofiScripts/WallpaperChanger/WC.rasi')

[ -z "$selected" ] && exit 0

swww img "$DIR/$selected" --transition-fps 240 --transition-step 255 --transition-duration 1 --transition-type wipe
ln -sf "$DIR/$selected" ~/.config/ThemeSwitcher/Walls/Wall
ln -sf "$DIR/$selected" ~/.config/ThemeSwitcher/Themes/ColorThemes/Tokyo-Night/Walls/1