#!/bin/sh -x

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install aircrack-ng
brew install anyenv
brew install arp-scan
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
brew install git-secrets
# brew install goenv
brew install graphviz
brew install hub
# brew install hydra
brew install jq
brew install mas
brew install mkcert
# brew install nodebrew
brew install openvpn
brew install peco
brew install pipenv
brew install plantuml
brew install postgresql
# brew install pyenv
# brew install rbenv
brew install rmtrash
# brew install ricty --with-powerline
brew install snort
brew install source-highlight
brew install suricata
brew install terminal-notifier
brew install tig
brew install tldr
brew install tree
brew install vim
brew install watch
brew install zsh

brew install caskroom/cask/brew-cask
brew cask install 1password
brew cask install adobe-creative-cloud
brew cask install alfred
brew cask install angry-ip-scanner
brew cask install angular-console
brew cask install appcleaner
brew cask install avast-security
brew cask install blackhole
brew cask install burp-suite
# brew cask install camtwist
# brew cask install cheatsheet
brew cask install clipy
brew cask install docker
brew cask install docker-toolbox
brew cask install dozer
brew cask install dropbox
brew cask install dynalist
brew cask install figma
brew cask install fluid
brew cask install google-chrome
# TODO: Edit .zshrc
# TODO: brew cask install google-cloud-sdk
brew cask install google-japanese-ime
brew cask install google-web-designer
brew cask install gyazo
brew cask install hyperswitch
brew cask install iterm2
brew cask install jasper
brew cask install krisp
brew cask install lastfm
brew cask install linear
brew cask install miro-formerly-realtimeboard
brew cask install muzzle
brew cask install near-lock
brew cask install postman
brew cask install qlstephen
brew cask install runjs
# brew cask install screenflow
brew cask install shift
brew cask install slack
brew cask install soundflower
brew cask install station
brew cask install sublime-text
brew cask install vagrant
brew cask install virtualbox
brew cask install virtualbox-extension-pack
brew cask install visual-studio-code
brew cask install xmind
brew cask install wireshark
brew cask install zenmap
brew cask install zoomus

brew tap sanemat/font
brew install sanemat/font/ricty
fc-cache -vf

brew cask alfred link
# cp -p /usr/local/opt/ricty/share/fonts/* ~/Library/Fonts/

brew tap heroku/brew && brew install heroku
