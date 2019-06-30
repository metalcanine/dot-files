#!/bin/bash

# currently this script expects most of the software to be pre-installed
echo 'installing windows setup'

curl https://sh.rustup.rs -sSf | sh

# code extensions
code --install-extension nathanridley.autotrim
code --install-extension dzannotti.vscode-babel-coloring
code --install-extension bungcip.better-toml
code --install-extension ms-vscode.cpptools
code --install-extension naumovs.color-highlight
code --install-extension mrcrowl.hg
code --install-extension jolaleye.horizon-theme-vscode
code --install-extension ecmel.vscode-html-css
code --install-extension mythmon.idl
code --install-extension esbenp.prettier-vscode
code --install-extension ms-python.python
code --install-extension rust-lang.rust
code --install-extension laurenttreguier.vscode-simple-icons
code --install-extension wayou.vscode-todo-highlight

# BE FREE MY PRETTIES
./utility/release.sh
