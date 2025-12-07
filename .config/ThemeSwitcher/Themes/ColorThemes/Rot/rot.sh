#! /bin/sh

swww img ~/.config/ThemeSwitcher/Themes/ColorThemes/Rot/Walls/1 --transition-fps 240 --transition-step 255 --transition-duration 1 --transition-type any
gsettings set org.gnome.desktop.interface color-scheme \'prefer-dark\'
ln -sfn ~/.config/IconThemes/Papirus-Red/Papirus-Dark ~/.local/share/icons/Icons
gsettings set org.gnome.desktop.interface icon-theme "'Papirus-Red'"
kitty +kitten themes --reload-in=all Rot
ln -sf ~/.config/ThemeSwitcher/Themes/ColorThemes/Rot/Walls/1 ~/.config/ThemeSwitcher/Walls/Wall
ln -sf ~/.config/ThemeSwitcher/Themes/ColorThemes/Rot/hyprcolors.conf ~/.config/colors/hyprcolors.conf
ln -sf ~/.config/ThemeSwitcher/Themes/ColorThemes/Rot/waybarcolors.css ~/.config/colors/waybarcolors.css
ln -sf ~/.config/ThemeSwitcher/Themes/ColorThemes/Rot/roficolors.rasi ~/.config/colors/roficolors.rasi
ln -sf ~/.config/ThemeSwitcher/Themes/ColorThemes/Rot/wall.sh ~/.config/RofiScripts/WallpaperChanger/wall.sh
ln -sf ~/.config/ThemeSwitcher/Themes/ColorThemes/Rot/wallrandom.sh ~/.config/RofiScripts/WallpaperChanger/wallrandom.sh
swaync-client -R
swaync-client -rs
killall -SIGUSR2 waybar
~/.config/nwg-dock-hyprland/launch.sh