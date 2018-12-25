#!/bin/bash

##### dotfiles #####
dotfiles=(.gitconfig .gitignore_global .tigrc .tmux.conf .vimrc .zshrc)

for file in ${dotfiles[@]}
do
    ln -s ~/src/github.com/shinoshu/dotfiles/$file $HOME/$file
done

##### defaults #####
# すべてのファイル名拡張子を表示
defaults write com.apple.finder AppleShowAllFiles TRUE
killall Finder

# zsh
# sudo cp -p shells shells.org
# echo '/usr/local/bin/zsh' >> /etc/shells
# chsh -s /usr/local/bin/zsh

# google-cloud-sdk
# chmod +x ~/google-cloud-sdk/platform/google_appengine/appcfg.py
# chmod +x ~/google-cloud-sdk/platform/google_appengine/goapp
