#! /bin/sh

dconf write /org/gnome/desktop/interface/color-scheme "'prefer-dark'"
ln -sfn ~/.config/RofiScripts/Walls/wall.sh ~/.config/RofiScripts/WallpaperChanger/wall.sh
ln -sfn ~/.config/RofiScripts/Walls/wallrandom.sh ~/.config/RofiScripts/WallpaperChanger/wallrandom.sh
matugen image ~/.config/RofiScripts/Walls/Wall -m dark -t scheme-fidelity --fallback-color grey
ln -sfn ~/.config/RofiScripts/Walls/Wall ~/.config/RofiScripts/WallpaperChanger/Wall

ln -sfn ~/.config/RofiScripts/Dark-Light-Mode/Hell/hell.sh ~/.config/swaync/scripts/changetheme.sh