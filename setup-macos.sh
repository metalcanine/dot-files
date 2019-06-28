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
# install_cask terminus?

# utilities
install_cask cscreen
install hub
install tree

# languages
install node
install python
install rust

# tools
install meson
install cmake
install postgresql

# misc apps
install_cask firefox
install_cask rambox
install_cask spotify

# development
install_cask github
install_cask visual-studio-code
install_cask postico

# code extensions
code --install-extension nathanridley.autotrim
code --install-extension dzannotti.vscode-babel-coloring
code --install-extension bungcip.better-toml
code --install-extension ms-vscode.cpptools
code --install-extension naumovs.color-highlight
code --install-extension file-icons.file-icons
code --install-extension mrcrowl.hg
code --install-extension jolaleye.horizon-theme-vscode
code --install-extension ecmel.vscode-html-css
code --install-extension mythmon.idl
code --install-extension esbenp.prettier-vscode
code --install-extension ms-python.python
code --install-extension rust-lang.rust
code --install-extension wayou.vscode-todo-highlight

# BE FREE MY PRETTIES
./utility/release.sh
