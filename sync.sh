#!/bin/bash
# Sync dotfiles to ~/.config

DOTFILES=~/dotfiles

sync() {
    src=$1
    dst=$2
    mkdir -p "$(dirname $dst)"
    cp -r "$src" "$dst"
    echo "✓ Synced $src → $dst"
}

sync $DOTFILES/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml
sync $DOTFILES/mpv/mpv.conf ~/.config/mpv/mpv.conf
sync $DOTFILES/mpv/input.conf ~/.config/mpv/input.conf
sync $DOTFILES/sway/config ~/.config/sway/config
sync $DOTFILES/waybar ~/.config/waybar
sync $DOTFILES/wofi ~/.config/wofi
sync $DOTFILES/mako ~/.config/mako
sync $DOTFILES/htop ~/.config/htop
sync $DOTFILES/zshrc ~/.zshrc
