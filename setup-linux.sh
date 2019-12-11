#!/bin/bash

# update packages and lists
sudo apt update && sudo apt upgrade

# utilities
sudo apt -y install git
sudo apt -y install curl
sudo apt -y install hub
sudo apt -y install tree

# languages
sudo apt -y  install nodejs
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# tools
sudo apt -y install meson
sudo apt -y install cmake

# development
sudo snap -y install code

# cleanup
sudo apt -y autoremove

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
code --install-extension theaflowers.witch-hazel
code --install-extension 13xforever.language-x86-64-assembly

# BE FREE MY PRETTIES
./utility/release.sh
