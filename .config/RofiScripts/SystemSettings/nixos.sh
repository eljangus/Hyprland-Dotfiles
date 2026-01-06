#! /bin/sh

chosen=$(printf " Configuration\n󰋜 Home Manager\n Flake" | rofi -dmenu -i -m DP-3 -config '~/.config/RofiScripts/SystemSettings/S.rasi')

case "$chosen" in
   " Configuration") codium ~/Hyprland-Dotfiles/NixOS/configuration.nix ;;
   "󰋜 Home Manager") codium ~/Hyprland-Dotfiles/NixOS/home.nix ;;
   " Flake") codium ~/Hyprland-Dotfiles/NixOS/flake.nix ;;
   *) exit 1 ;;
esac
