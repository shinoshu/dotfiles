#!/bin/sh -x

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# TODO: brew install anyenv
brew install bat
brew install coreutils
brew install direnv
brew install exa
brew install fish
brew install ghq
brew install gibo
brew install goenv
brew install hub
brew install jq
brew install mas
brew install nodebrew
brew install peco
brew install pipenv
brew install postgresql
brew install pyenv
brew install rbenv
brew install rmtrash
brew install ricty --with-powerline
brew install terminal-notifier
brew install tig
brew install tldr
brew install zsh

brew install caskroom/cask/brew-cask
brew cask install alfred
brew cask install appcleaner
# brew cask install cheatsheet
brew cask install clipy
brew cask install docker
brew cask install dropbox
brew cask install google-chrome
brew cask install google-japanese-ime
brew cask install gyazo
brew cask install postman
brew cask install qlstephen
brew cask install slack
brew cask install virtualbox && brew cask install vagrant
brew cask install visual-studio-code

brew cask alfred link
cp -p /usr/local/opt/ricty/share/fonts/* ~/Library/Fonts/
