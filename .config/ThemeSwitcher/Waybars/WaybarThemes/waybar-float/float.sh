#! /bin/sh

~/.config/ThemeSwitcher/Animations/Horizontal/horizontal.sh
~/.config/ThemeSwitcher/Rounding/RoundingThemes/20px/round.sh
hyprctl reload
ln -sf ~/.config/ThemeSwitcher/Waybars/WaybarThemes/waybar-float/config.jsonc ~/.config/waybar/config.jsonc
ln -sf ~/.config/ThemeSwitcher/Waybars/WaybarThemes/waybar-float/style.css ~/.config/waybar/style.css
ln -sf ~/.config/ThemeSwitcher/Waybars/WaybarThemes/waybar-float/modules.jsonc ~/.config/waybar/modules.jsonc
ln -sf ~/.config/ThemeSwitcher/Dock/style.css ~/.config/nwg-dock-hyprland/style.css
killall waybar
waybar