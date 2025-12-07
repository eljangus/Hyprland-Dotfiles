#! /bin/bash

find ~/Hyprland-Dotfiles/.config/ThemeSwitcher -type f \( -name "*.jpg" -o -name "*.png" \) -exec bash -c 'for f; do mv "$f" "${f%.*}"; done' _ {} +