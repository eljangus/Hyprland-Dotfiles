#! /bin/sh

~/.config/ThemeSwitcher/Animations/Horizontal/horizontal.sh
~/.config/ThemeSwitcher/Rounding/RoundingThemes/20px/round.sh
hyprctl reload
ln -sf ~/.config/ThemeSwitcher/Waybars/WaybarThemes/bar/config.jsonc ~/.config/waybar/config.jsonc
ln -sf ~/.config/ThemeSwitcher/Waybars/WaybarThemes/bar/style.css ~/.config/waybar/style.css
ln -sf ~/.config/ThemeSwitcher/Waybars/WaybarThemes/bar/modules.jsonc ~/.config/waybar/modules.jsonc
ln -sf ~/.config/ThemeSwitcher/Dock/style.css ~/.config/nwg-dock-hyprland/style.css
ln -sf ~/.config/ThemeSwitcher/Waybars/WaybarThemes/bar/launch.sh ~/.config/nwg-dock-hyprland/launch.sh
killall waybar
waybar
