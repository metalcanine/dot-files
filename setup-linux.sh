#!/bin/bash

# update packages and lists
sudo apt update && sudo apt upgrade

# utilities
sudo apt -y install git
sudo apt -y install curl
sudo apt -y install hub
sudo apt -y install tree

# languages
sudo apt -y install nodejs
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# development
sudo snap -y install code

# cleanup
sudo apt -y autoremove

# code extensions
source code-extensions.sh

# BE FREE MY PRETTIES
./utility/release.sh
