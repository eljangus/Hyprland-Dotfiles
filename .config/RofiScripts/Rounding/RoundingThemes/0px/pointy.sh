#! /bin/bash

ln -sf ~/.config/RofiScripts/Rounding/RoundingThemes/0px/hyprdecoration.conf ~/.config/hypr/hyprconfigs/hyprdecoration.conf
ln -sf ~/.config/RofiScripts/Rounding/RoundingThemes/0px/rofiradius.rasi ~/.config/colors/rofiradius.rasi
ln -sf ~/.config/RofiScripts/Rounding/RoundingThemes/0px/swayncradius.css ~/.config/colors/swayncradius.css
swaync-client -R
swaync-client -rs