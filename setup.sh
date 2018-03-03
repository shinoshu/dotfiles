#!/bin/bash

dotfiles=(.alias .zshrc .zsh_peco)

for file in ${dotfiles[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done
