#! /bin/sh

swww img ~/.config/ThemeSwitcher/Themes/ColorThemes/Poetisch/Walls/1 --transition-fps 240 --transition-step 255 --transition-duration 1 --transition-type any 
gsettings set org.gnome.desktop.interface color-scheme \'prefer-dark\'
ln -sfn ~/.config/IconThemes/Papirus-Palebrown/Papirus-Dark ~/.local/share/icons/Icons
gsettings set org.gnome.desktop.interface icon-theme "'Papirus-Palebrown'"
kitty +kitten themes --reload-in=all E-Ink Dark
ln -sf ~/.config/ThemeSwitcher/Themes/ColorThemes/Poetisch/Walls/1 ~/.config/ThemeSwitcher/Walls/Wall
ln -sf ~/.config/ThemeSwitcher/Themes/ColorThemes/Poetisch/hyprcolors.conf ~/.config/colors/hyprcolors.conf
ln -sf ~/.config/ThemeSwitcher/Themes/ColorThemes/Poetisch/waybarcolors.css ~/.config/colors/waybarcolors.css
ln -sf ~/.config/ThemeSwitcher/Themes/ColorThemes/Poetisch/roficolors.rasi ~/.config/colors/roficolors.rasi
ln -sf ~/.config/ThemeSwitcher/Themes/ColorThemes/Poetisch/wall.sh ~/.config/RofiScripts/WallpaperChanger/wall.sh
ln -sf ~/.config/ThemeSwitcher/Themes/ColorThemes/Poetisch/wallrandom.sh ~/.config/RofiScripts/WallpaperChanger/wallrandom.sh
swaync-client -R
swaync-client -rs
killall -SIGUSR2 waybar
~/.config/nwg-dock-hyprland/launch.sh