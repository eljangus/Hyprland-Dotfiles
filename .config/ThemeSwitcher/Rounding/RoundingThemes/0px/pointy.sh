#! /bin/bash

ln -sf ~/.config/ThemeSwitcher/Rounding/RoundingThemes/0px/hyprdecoration.conf ~/.config/hypr/hyprconfigs/hyprdecoration.conf
ln -sf ~/.config/ThemeSwitcher/Rounding/RoundingThemes/0px/rofiradius.rasi ~/.config/colors/rofiradius.rasi
ln -sf ~/.config/ThemeSwitcher/Rounding/RoundingThemes/0px/swayncradius.css ~/.config/colors/swayncradius.css
swaync-client -R
swaync-client -rs