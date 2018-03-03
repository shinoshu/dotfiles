#!/bin/bash

dotfiles=(.zprofile .zshrc)

for file in ${dotfiles[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done
