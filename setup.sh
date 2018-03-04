#!/bin/bash

dotfiles=(.gitconfig .gitignore_global .vimrc .zshrc)

for file in ${dotfiles[@]}
do
    ln -s ~/src/github.com/syuma1214/dotfiles/$file $HOME/$file
done
