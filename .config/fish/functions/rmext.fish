function rmext
    for f in *.png *.jpg *.jpeg *.gif
        mv -- "$f" (string replace -r '\.[^.]+$' '' -- "$f")
    end
end
