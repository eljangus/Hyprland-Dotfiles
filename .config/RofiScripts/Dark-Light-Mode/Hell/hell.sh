#! /bin/bash

gsettings set org.gnome.desktop.interface color-scheme "'prefer-light'"
ln -sfn ~/.config/RofiScripts/Walls-light/wall.sh ~/.config/RofiScripts/WallpaperChanger/wall.sh
ln -sfn ~/.config/RofiScripts/Walls-light/wallrandom.sh ~/.config/RofiScripts/WallpaperChanger/wallrandom.sh
matugen image ~/.config/RofiScripts/Walls-light/Wall -m light -t scheme-tonal-spot
ln -sfn ~/.config/RofiScripts/Walls-light/Wall ~/.config/RofiScripts/WallpaperChanger/Wall

ln -sfn ~/.config/RofiScripts/Dark-Light-Mode/Dunkel/dunkel.sh ~/.config/swaync/scripts/changetheme.sh