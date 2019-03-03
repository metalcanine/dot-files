#!/bin/bash

echo "rounding up my dot file children"
cp ~/.bash_profile ./configs/.bash_profile
cp ~/.gitconfig ./configs/.gitconfig

case "$(uname -s)" in
    Linux*)     echo "WHERE DO I GET THESE OH NO";;
    Darwin*)    cp ~/Library/Application\ Support/Code/User/settings.json ./configs/settings.json;;
    MINGW*)     cp ~/AppData/Roaming/Code/User/settings.json ./configs/settings.json;;
esac
