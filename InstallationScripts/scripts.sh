#! /bin/bash

for dir in ~/Hyprland-Dotfiles/.config/ThemeSwitcher ~/Hyprland-Dotfiles/.config/RofiScripts ~/Hyprland-Dotfiles/.config/nwg-dock-hyprland ~/Hyprland-Dotfiles/.config/waybar; do
    find "$dir" -type f -name "*.sh" -exec chmod +x {} \;
done
