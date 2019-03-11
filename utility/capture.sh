#!/bin/bash

echo "rounding up my dot file children"
case "$(uname -s)" in
  Linux*)   cp ~/.bash_profile ./configs/.lin_bash_profile;;
  Darwin*)  cp ~/.bash_profile ./configs/.mac_bash_profile;;
  MINGW*)   cp ~/.bash_profile ./configs/.win_bash_profile;;
esac

cp ~/.gitconfig ./configs/.gitconfig

case "$(uname -s)" in
    Linux*)     echo "WHERE DO I GET THESE OH NO";;
    Darwin*)    cp ~/Library/Application\ Support/Code/User/settings.json ./configs/settings.json;;
    MINGW*)     cp ~/AppData/Roaming/Code/User/settings.json ./configs/settings.json;;
esac
