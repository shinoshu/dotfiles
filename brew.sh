#!/bin/sh -x

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# brew install aircrack-ng
brew install ansible
brew install anyenv
brew install arp-scan
brew install awscli
brew install azure-cli
brew install bat
# brew install chrome-cli
brew install coreutils
brew install dep
brew install direnv
brew install exa
brew install exploitdb
brew install ffmpeg
brew install fish
brew install gcc
# brew install geoip
brew install ghq
brew install gibo
brew install git-flow
brew install git-secrets
# brew install goenv
brew install golang-migrate
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
brew install protobuf
# brew install pyenv
# brew install rbenv
brew install rename
brew install rmtrash
# brew install ricty --with-powerline
brew install snort
brew install source-highlight
brew install suricata
brew install terraform
brew install terminal-notifier
brew install tig
brew install tldr
brew install tree
brew install vim
brew install pyenv-virtualenv
brew install pyenv-virtualenvwrapper
brew install watch
brew install wget
brew install yarn
brew install youtube-dl
brew install zsh

brew install caskroom/cask/brew-cask
brew cask install 1password
brew cask install accessmenubarapps
brew cask install adobe-creative-cloud
brew cask install alfred
# brew cask install android-studio
# brew cask install angry-ip-scanner
# brew cask install angular-console
brew cask install appcleaner
# brew cask install atom
# brew cask install avast-security
# brew cask install balenaetcher
brew cask install bathyscaphe
# brew cask install blackhole
# brew cask install blender
# brew cask install burp-suite
# brew cask install camtwist
brew cask install cd-to
# brew cask install cheatsheet
brew cask install clipy
# brew cask install cyberduck
# brew cask install dash
brew cask install docker
# brew cask install docker-machine
# brew cask install docker-toolbox
# brew cask install dozer
# brew cask install drama
brew cask install drawio
brew cask install dropbox
# brew cask install dynalist
# brew cask install figma
brew cask install firefox
# brew cask install fluid
# brew cask install fuwari
brew cask install google-chrome
brew cask install google-chrome-canary
brew cask install google-cloud-sdk
# brew cask install google-drive-file-stream
brew cask install google-japanese-ime
# brew cask install google-web-designer
# brew cask install gyazo
brew cask install hex-fiend
brew cask install hiddenbar
brew cask install http-toolkit
# brew cask install hyper
brew cask install hyperswitch
brew cask install inkscape
brew cask install intellij-idea
brew cask install iterm2
# brew cask install jasper
brew cask install java
brew cask install krisp
brew cask install lastfm
brew cask install linear
# brew cask install macdown
brew cask install mamp
brew cask install metabase
brew cask install middleclick
# brew cask install milanote
# brew cask install miro-formerly-realtimeboard
# brew cask install muzzle
# brew cask install near-lock
brew cask install ngrok
brew cask install openinterminal
brew cask install opera
brew cask install postman
brew cask install qlcolorcode
brew cask install qlimagesize
brew cask install qlmarkdown
brew cask install qlvideo
brew cask install qlstephen
brew cask install quicklookase
brew cask install quicklook-csv
brew cask install quicklook-json
brew cask install runjs
# brew cask install sbrowserq
# brew cask install sequel-pro
brew cask install sequel-pro-nightly
brew cask install serviio
# brew cask install screenflow
# brew cask install shift
# brew cask install simple-comic
brew cask install slack
brew cask install soundflower
brew cask install sourcetree
brew cask install station
# brew cask install stoplight-studio
brew cask install sublime-text
# brew cask install suspicious-package
# brew cask install teamsql
brew cask install the-unarchiver
brew cask install transmission
# brew cask install unetbootin
# brew cask install unity
# brew cask install unity-hub
brew cask install vagrant
brew cask install virtualbox
brew cask install virtualbox-extension-pack
brew cask install visual-studio-code
brew cask install xmind
brew cask install webstorm
# brew cask install wireshark
brew cask install wrike
# brew cask install zenmap
# brew cask install zeplin
brew cask install zoomus

brew install github/gh/gh
brew install masutaka/github-nippou/github-nippou
brew install suin/suin/git-remind

brew tap aws/tap
brew install aws-sam-cli

brew tap sanemat/font
brew install sanemat/font/ricty
fc-cache -vf

brew cask alfred link
# cp -p /usr/local/opt/ricty/share/fonts/* ~/Library/Fonts/

brew tap heroku/brew && brew install heroku
brew install suin/suin/git-remind
