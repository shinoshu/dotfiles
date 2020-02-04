#!/bin/sh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/shinoshu/dotfiles/master/brew.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/shinoshu/dotfiles/master/mas.sh)"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/shinoshu/dotfiles/master/vscode.sh)"
ln -s ~/src/github.com/shinoshu/dotfiles/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -s ~/src/github.com/shinoshu/dotfiles/starship.toml ~/.config/starship.toml
ln -s /System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport ~/bin/airport
ln -sf /usr/local/bin/gcc-9 /usr/local/bin/gcc
ln -sf /usr/local/bin/g++-9 /usr/local/bin/g++

########## dotfiles ##########
git config --grobal ghq.root ~/src
ghq get shinoshu/dotfiles

dotfiles=(
    .gitconfig
    .gitignore_global
    .hyper.js
    .tigrc
    .tmux.conf
    .vimrc
    .wakatime.cfg
    .zshrc
)

for file in ${dotfiles[@]}
do
    ln -s ~/src/github.com/shinoshu/dotfiles/$file $HOME/$file
done
##############################

sudo gem install cocoapods

########## defaults ##########
# すべてのファイル名拡張子を表示
defaults write com.apple.finder AppleShowAllFiles TRUE
killall Finder
##############################

########## manual ##########
# zsh
# sudo cp -p shells shells.org
# echo '/usr/local/bin/zsh' >> /etc/shells
# chsh -s /usr/local/bin/zsh
#
# google-cloud-sdk
# ・https://cloud.google.com/sdk/docs/initializing?hl=ja
# ・https://cloud.google.com/sdk/downloads?hl=ja
#
# curl https://sdk.cloud.google.com | bash
# chmod +x ~/google-cloud-sdk/platform/google_appengine/appcfg.py
# chmod +x ~/google-cloud-sdk/platform/google_appengine/goapp
#
# bash <(curl -s -S -L https://git.io/install-gam)
#
# nodebrew
# nodebrew setup_dirs
#
# npm i -g npm-check-updates
# npm i -g @angular/cli
# npm i -g @google/clasp
# npm i -g textlint
#
# xcode-select --install
##############################
