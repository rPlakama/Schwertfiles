#!/run/current-system/sw/bin/fish
cd ~

while true
    set file (fd --full-path ~/download/ -d 3 | fzf)
    if test -z "$file"
        break
    end
    mpv --no-save-position-on-quit "$file"
end
