#!/bin/bash

echo "rounding up my dot file children"
case "$(uname -s)" in
  Linux*)   cp ~/.bashrc ./configs/.bashrc;;
  Darwin*)  cp ~/.zshrc ./configs/.zshrc;;
  MINGW*)   cp ~/.bash_profile ./configs/.bash_profile;;
esac

cp ~/.gitconfig ./configs/.gitconfig
cp ~/.hgignore ./configs/.hgignore

case "$(uname -s)" in
    Linux*)     cp ~/.config/Code/User/settings.json ./configs/settings.json;;
    Darwin*)    cp ~/Library/Application\ Support/Code/User/settings.json ./configs/settings.json;;
    MINGW*)     cp ~/AppData/Roaming/Code/User/settings.json ./configs/settings.json;;
esac
