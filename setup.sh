#!/bin/bash

dotfiles=(.gitconfig .gitignore_global .tmux.conf .vimrc .zshrc)

for file in ${dotfiles[@]}
do
    ln -s ~/src/github.com/shinoshu/dotfiles/$file $HOME/$file
done

ln -s ~/src/github.com/shinoshu/dotfiles/bin $HOME/bin
