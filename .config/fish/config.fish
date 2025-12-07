if status is-interactive
    set -U fish_greeting ""
    starship init fish | source
end
