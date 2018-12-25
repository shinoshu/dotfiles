#!/bin/bash

dotfiles=(.gitconfig .gitignore_global .tigrc .tmux.conf .vimrc .zshrc)

for file in ${dotfiles[@]}
do
    ln -s ~/src/github.com/shinoshu/dotfiles/$file $HOME/$file
done

# zsh
# sudo cp -p shells shells.org
# echo '/usr/local/bin/zsh' >> /etc/shells
# chsh -s /usr/local/bin/zsh
