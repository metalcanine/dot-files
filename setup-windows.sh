#!/bin/bash

# install chocolatey and git bash beforehand bc I'm tired, thanks
# I don't know if this works and I'm a little too afraid to try
function install() {
  choco install $1 -y || { echo 'failed to install' $1; exit 1; }
}

echo 'installing windows setup'

install openssl.light

# utilities
install hub

# languages
install nodejs-lts
install python
curl https://sh.rustup.rs -sSf | sh

# tools
# install meson
install cmake
install postgresql

# misc apps
install firefox
install rambox
install spotify

# development
install itch
install blender
install github-desktop
# install twine
install unity-hub
install epicgameslauncher
install vscode
install visualstudio2017community
install pgadmin4

# code extensions
code --install-extension nathanridley.autotrim
code --install-extension dzannotti.vscode-babel-coloring
code --install-extension bungcip.better-toml
code --install-extension ms-vscode.cpptools
code --install-extension naumovs.color-highlight
code --install-extension dbaeumer.vscode-eslint
code --install-extension file-icons.file-icons
code --install-extension ecmel.vscode-html-css
code --install-extension rust-lang.rust
code --install-extension wayou.vscode-todo-highlight

# BE FREE MY PRETTIES
./utility/release.sh
