function pkgsave --wraps='pacman -Qqe > ~/Dokumente/Hyprland/pkglist.txt' --description 'alias pkgsave=pacman -Qqe > ~/Dokumente/Hyprland/pkglist.txt'
    pacman -Qqe > ~/Dokumente/Hyprland/pkglist.txt $argv
end
