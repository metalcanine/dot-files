#!/bin/bash

function install() {
  brew install $1 || { echo 'failed to install' $1; exit 1; }
}

function install_cask() {
  brew cask install $1 || { echo 'failed to install' $1; exit 1; }
}

echo 'installing macos setup'

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# cli tools
xcode-select --install

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
install openssl

# shell
install_cask hyper

# utilities
install git
install mercurial
install_cask cscreen
install hub
install tree
install wget

# languages
install node
install python
install rust
install yasm
install nasm

# tools
install cmake
install postgresql
install docker

# misc apps
install_cask spotify

# development
install_cask github
install_cask visual-studio-code
install_cask postico

# hyper extensions
hyper i hyper-material-theme

# code extensions
code --install-extension nathanridley.autotrim
code --install-extension metalcanine.awoo
code --install-extension dzannotti.vscode-babel-coloring
code --install-extension bungcip.better-toml
code --install-extension ms-vscode.cpptools
code --install-extension xaver.clang-format
code --install-extension twxs.cmake
code --install-extension github.codeql
code --install-extension naumovs.color-highlight
code --install-extension firefox-devtools.vscode-firefox-debug
code --install-extension dbaeumer.eslint
code --install-extension mrcrowl.hg
code --install-extension ecmel.vscode-html-css
code --install-extension mythmon.idl
code --install-extension esbenp.prettier-vscode
code --install-extension ms-python.python
code --install-extension rust-lang.rust
code --install-extension wayou.vscode-todo-highlight
code --install-extension equinusocio.vsc-material-theme
code --install-extension equinusocio.vsc-material-theme-icons
code --install-extension 13xforever.language-x86-64-assembly

# BE FREE MY PRETTIES
./utility/release.sh
