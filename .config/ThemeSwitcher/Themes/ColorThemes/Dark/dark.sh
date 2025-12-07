#! /bin/sh

swww img ~/.config/ThemeSwitcher/Themes/ColorThemes/Dark/Walls/1 --transition-fps 240 --transition-step 255 --transition-duration 1 --transition-type any
gsettings set org.gnome.desktop.interface color-scheme \'prefer-dark\'
ln -sfn ~/.config/IconThemes/Papirus-White/Papirus-Dark ~/.local/share/icons/Icons
gsettings set org.gnome.desktop.interface icon-theme "'Papirus-White'"
kitty +kitten themes --reload-in=all Adwaita Dark
ln -sf ~/.config/ThemeSwitcher/Themes/ColorThemes/Dark/Walls/1 ~/.config/ThemeSwitcher/Walls/Wall
ln -sf ~/.config/ThemeSwitcher/Themes/ColorThemes/Dark/hyprcolors.conf ~/.config/colors/hyprcolors.conf
ln -sf ~/.config/ThemeSwitcher/Themes/ColorThemes/Dark/waybarcolors.css ~/.config/colors/waybarcolors.css
ln -sf ~/.config/ThemeSwitcher/Themes/ColorThemes/Dark/roficolors.rasi ~/.config/colors/roficolors.rasi
ln -sf ~/.config/ThemeSwitcher/Themes/ColorThemes/Dark/wall.sh ~/.config/RofiScripts/WallpaperChanger/wall.sh
ln -sf ~/.config/ThemeSwitcher/Themes/ColorThemes/Dark/wallrandom.sh ~/.config/RofiScripts/WallpaperChanger/wallrandom.sh
swaync-client -R
swaync-client -rs
killall -SIGUSR2 waybar
~/.config/nwg-dock-hyprland/launch.sh
