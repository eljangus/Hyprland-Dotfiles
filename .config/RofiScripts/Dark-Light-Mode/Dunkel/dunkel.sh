#! /bin/bash

gsettings set org.gnome.desktop.interface color-scheme "'prefer-dark'"
ln -sfn ~/.config/RofiScripts/Walls/wall.sh ~/.config/RofiScripts/WallpaperChanger/wall.sh
ln -sfn ~/.config/RofiScripts/Walls/wallrandom.sh ~/.config/RofiScripts/WallpaperChanger/wallrandom.sh
matugen image ~/.config/RofiScripts/Walls/Wall -m dark -t scheme-tonal-spot
ln -sfn ~/.config/RofiScripts/Walls/Wall ~/.config/RofiScripts/WallpaperChanger/Wall