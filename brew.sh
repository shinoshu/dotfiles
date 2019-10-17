#!/bin/sh -x

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# TODO: brew install anyenv
brew install awscli
brew install bat
brew install coreutils
brew install direnv
brew install exa
brew install exploitdb
brew install fish
# brew install geoip
brew install ghq
brew install gibo
brew install goenv
brew install graphviz
brew install hub
# brew install hydra
brew install jq
brew install mas
brew install mkcert
brew install nodebrew
brew install peco
brew install pipenv
brew install plantuml
brew install postgresql
brew install pyenv
brew install rbenv
brew install rmtrash
brew install ricty --with-powerline
brew install snort
brew install suricata
brew install terminal-notifier
brew install tig
brew install tldr
brew install watch
brew install zsh

brew install caskroom/cask/brew-cask
brew cask install adobe-creative-cloud
brew cask install alfred
brew cask install angry-ip-scanner
brew cask install appcleaner
brew cask install avast-security
brew cask install burp-suite
# brew cask install cheatsheet
brew cask install clipy
brew cask install docker
brew cask install docker-toolbox
brew cask install dropbox
brew cask install google-chrome
brew cask install google-japanese-ime
brew cask install gyazo
brew cask install hyperswitch
brew cask install iterm2
brew cask install jasper
brew cask install postman
brew cask install qlstephen
# brew cask install screenflow
brew cask install slack
brew cask install soundflower
brew cask install sublime-text
brew cask install vagrant
brew cask install virtualbox
brew cask install virtualbox-extension-pack
brew cask install visual-studio-code
brew cask install xmind
brew cask install wireshark
brew cask install zenmap

brew cask alfred link
cp -p /usr/local/opt/ricty/share/fonts/* ~/Library/Fonts/
