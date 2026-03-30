#!/bin/bash
# Pull current configs into dotfiles repo

DOTFILES=~/dotfiles

pull() {
    src=$1
    dst=$2
    cp -r "$src" "$dst"
    echo "✓ Pulled $src → $dst"
}

pull ~/.config/alacritty/alacritty.toml $DOTFILES/alacritty/
pull ~/.config/mpv/mpv.conf $DOTFILES/mpv/
pull ~/.config/mpv/input.conf $DOTFILES/mpv/
pull ~/.config/sway/config $DOTFILES/sway/
pull ~/.config/waybar $DOTFILES/
pull ~/.config/wofi $DOTFILES/
pull ~/.config/mako $DOTFILES/
pull ~/.config/htop $DOTFILES/
pull ~/.zshrc $DOTFILES/
