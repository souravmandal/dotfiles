#!/bin/sh

dotfiles=$(ls -a | grep -v git | grep '^\.[^\.$]')

for df in $dotfiles; do
    ln -sf $HOME/dotfiles/$df $HOME/$df
done

