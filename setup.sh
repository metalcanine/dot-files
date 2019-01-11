#!/bin/bash

function install() {
	brew install $1 || { echo 'failed to install' $1; exit 1; }
}

function install_cask() {
	brew cask install $1 || { echo 'failed to install' $1; exit 1; }
}

echo 'installing macos setup'

# cli tools
xcode-select --install

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
install openssl

# shell
install_cask iterm2

# utilities
install clang-format
install_cask cscreen
install hub
install tree

# languages
install node
install ruby
install python
install cling
install rust

# tools
install meson
install postgresql
install heroku/brew/heroku
install_cask ngrok

# GUI apps
# utilities
install_cask spotify

# browsers
install_cask firefox
install_cask opera

# development
install_cask itch
install_cask blender
install_cask gitkraken

# engines
install_cask twine
install_cask unity-hub
#install_cask epic-games

# communication
install_cask discord

# tools
install_cask postman
install_cask postico

# editors
install_cask visual-studio
install_cask visual-studio-code

# code extensions
code --install-extension dbaeumer.vscode-eslint
code --install-extension dzannotti.vscode-babel-coloring
code --install-extension ecmel.vscode-html-css
code --install-extension file-icons.file-icons
code --install-extension kalitaalexey.vscode-rust
code --install-extension ms-vscode.cpptools
code --install-extension nathanridley.autotrim
code --install-extension naumovs.color-highlight
code --install-extension xaver.clang-format

# BE FREE MY PRETTIES
./release.sh

# don't forget: pico8
