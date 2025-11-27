#! /bin/sh

~/.config/ThemeSwitcher/Animations/Vertical/vertical.sh
~/.config/ThemeSwitcher/Rounding/RoundingThemes/0px/pointy.sh
hyprctl reload
ln -sf ~/.config/ThemeSwitcher/Waybars/WaybarThemes/waybar-bar-pointy-border-vertical/config.jsonc ~/.config/waybar/config.jsonc
ln -sf ~/.config/ThemeSwitcher/Waybars/WaybarThemes/waybar-bar-pointy-border-vertical/style.css ~/.config/waybar/style.css
ln -sf ~/.config/ThemeSwitcher/Waybars/WaybarThemes/waybar-bar-pointy-border-vertical/modules.jsonc ~/.config/waybar/modules.jsonc
killall waybar
waybar