if status is-interactive
    # Commands to run in interactive sessions can go here
    clear; neofetch --kitty (find "$HOME/.config/neofetch/pngs/" -name "*.png" | sort -R | head -1)
end
