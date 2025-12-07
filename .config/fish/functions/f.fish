function f --wraps="fzf --preview 'cat {}'" --description "alias f=fzf --preview 'cat {}'"
    fzf --preview 'cat {}' $argv
end
