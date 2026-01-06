#! /bin/sh

~/.config/RofiScripts/Animations/Horizontal/horizontal.sh
~/.config/RofiScripts/Rounding/RoundingThemes/20px/round.sh
hyprctl reload
ln -sf ~/.config/RofiScripts/Waybars/WaybarThemes/bar/config.jsonc ~/.config/waybar/config.jsonc
ln -sf ~/.config/RofiScripts/Waybars/WaybarThemes/bar/style.css ~/.config/waybar/style.css
ln -sf ~/.config/RofiScripts/Waybars/WaybarThemes/bar/modules.jsonc ~/.config/waybar/modules.jsonc
ln -sf ~/.config/ThemeSwitcher/Dock/style.css ~/.config/nwg-dock-hyprland/style.css
ln -sf ~/.config/RofiScripts/Waybars/WaybarThemes/bar/launch.sh ~/.config/nwg-dock-hyprland/launch.sh
killall .waybar-wrapped
waybar
