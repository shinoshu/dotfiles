#!/bin/bash

dotfiles=(.zshrc)

for file in ${dotfiles[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done
