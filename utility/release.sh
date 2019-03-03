#!/bin/bash

echo 'releasing dot files, be free my children'
cp ./configs/.bash_profile ~/.bash_profile
cp ./configs/.gitconfig ~/.gitconfig

case "$(uname -s)" in
    Linux*)     echo "WHERE DO I PUT THESE OH NO";;
    Darwin*)    cp ./configs/settings.json ~/Library/Application\ Support/Code/User/settings.json;;
    MINGW*)     cp ./configs/settings.json ~/AppData/Roaming/Code/User/settings.json;;
esac
