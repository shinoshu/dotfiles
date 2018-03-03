#!/bin/bash

dotfiles=(.gitconfig .gitignore_global .zshrc)

for file in ${dotfiles[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done
