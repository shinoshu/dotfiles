#!/bin/bash

dotfiles=(.alias .zshrc)

for file in ${dotfiles[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done
