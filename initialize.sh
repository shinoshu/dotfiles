#!/bin/bash

# すべてのファイル名拡張子を表示
defaults write com.apple.finder AppleShowAllFiles TRUE

killall Finder
