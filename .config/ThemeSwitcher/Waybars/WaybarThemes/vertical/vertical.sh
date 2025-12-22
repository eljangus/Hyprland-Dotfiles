#! /bin/sh

~/.config/ThemeSwitcher/Animations/Vertical/vertical.sh
~/.config/ThemeSwitcher/Rounding/RoundingThemes/0px/pointy.sh
hyprctl reload
ln -sf ~/.config/ThemeSwitcher/Waybars/WaybarThemes/vertical/config.jsonc ~/.config/waybar/config.jsonc
ln -sf ~/.config/ThemeSwitcher/Waybars/WaybarThemes/vertical/style.css ~/.config/waybar/style.css
ln -sf ~/.config/ThemeSwitcher/Waybars/WaybarThemes/vertical/modules.jsonc ~/.config/waybar/modules.jsonc
ln -sf ~/.config/ThemeSwitcher/Dock/style-pointy.css ~/.config/nwg-dock-hyprland/style.css
ln -sf ~/.config/ThemeSwitcher/Waybars/WaybarThemes/vertical/launch.sh ~/.config/nwg-dock-hyprland/launch.sh
killall waybar
waybar
