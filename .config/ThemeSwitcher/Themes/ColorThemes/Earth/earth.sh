#! /bin/sh

swww img ~/.config/ThemeSwitcher/Themes/ColorThemes/Earth/Walls/1 --transition-fps 240 --transition-step 255 --transition-duration 1 --transition-type any
gsettings set org.gnome.desktop.interface color-scheme \'prefer-dark\'
ln -sfn ~/.config/IconThemes/Papirus-Yellow/Papirus-Dark ~/.local/share/icons/Icons
gsettings set org.gnome.desktop.interface icon-theme "'Papirus-Yellow'"
kitty +kitten themes --reload-in=all Base2Tone Earth Dark
ln -sf ~/.config/ThemeSwitcher/Themes/ColorThemes/Earth/Walls/1 ~/.config/ThemeSwitcher/Walls/Wall
ln -sf ~/.config/ThemeSwitcher/Themes/ColorThemes/Earth/hyprcolors.conf ~/.config/colors/hyprcolors.conf
ln -sf ~/.config/ThemeSwitcher/Themes/ColorThemes/Earth/waybarcolors.css ~/.config/colors/waybarcolors.css
ln -sf ~/.config/ThemeSwitcher/Themes/ColorThemes/Earth/roficolors.rasi ~/.config/colors/roficolors.rasi
ln -sf ~/.config/ThemeSwitcher/Themes/ColorThemes/Earth/wall.sh ~/.config/RofiScripts/WallpaperChanger/wall.sh
ln -sf ~/.config/ThemeSwitcher/Themes/ColorThemes/Earth/wallrandom.sh ~/.config/RofiScripts/WallpaperChanger/wallrandom.sh
swaync-client -R
swaync-client -rs
killall -SIGUSR2 waybar
~/.config/nwg-dock-hyprland/launch.sh