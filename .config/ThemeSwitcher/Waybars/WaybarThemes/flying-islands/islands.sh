#! /bin/sh

~/.config/ThemeSwitcher/Animations/Horizontal/horizontal.sh
~/.config/ThemeSwitcher/Rounding/RoundingThemes/20px/round.sh
hyprctl reload
ln -sf ~/.config/ThemeSwitcher/Waybars/WaybarThemes/flying-islands/config.jsonc ~/.config/waybar/config.jsonc
ln -sf ~/.config/ThemeSwitcher/Waybars/WaybarThemes/flying-islands/style.css ~/.config/waybar/style.css
ln -sf ~/.config/ThemeSwitcher/Waybars/WaybarThemes/flying-islands/modules.jsonc ~/.config/waybar/modules.jsonc
ln -sf ~/.config/ThemeSwitcher/Dock/style.css ~/.config/nwg-dock-hyprland/style.css
ln -sf ~/.config/ThemeSwitcher/Waybars/WaybarThemes/flying-islands/launch.sh ~/.config/nwg-dock-hyprland/launch.sh
killall waybar
waybar
