function instandhalten --wraps='paccache -r & pacman -Qtd' --description 'alias instandhalten=paccache -r & pacman -Qtd'
    paccache -r & pacman -Qtd $argv
end
