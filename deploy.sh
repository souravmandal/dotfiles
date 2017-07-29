#!/bin/sh

dotfiles=$(ls -a $HOME/dotfiles | grep -v git | grep '^\.[^\.$]')

for df in $dotfiles; do
    echo "Deploying $df"
    ln -sf $HOME/dotfiles/$df $HOME/$df
done

