#!/bin/bash

echo 'releasing dot files, be free my children'
case "$(uname -s)" in
  Linux*)   cp ./configs/.bashrc ~/.bashrc;;
  Darwin*)  cp ./configs/.zshrc ~/.zshrc;;
  MINGW*)   cp ./configs/.bash_profile ~/.bash_profile;;
esac

cp ./configs/.gitconfig ~/.gitconfig
cp ./configs/.hgignore ~/.hgignore

case "$(uname -s)" in
    Linux*)     cp ./configs/settings.json ~/.config/Code/User/settings.json;;
    Darwin*)    cp ./configs/settings.json ~/Library/Application\ Support/Code/User/settings.json;;
    MINGW*)     cp ./configs/settings.json ~/AppData/Roaming/Code/User/settings.json;;
esac
