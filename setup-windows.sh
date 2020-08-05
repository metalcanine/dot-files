#!/bin/bash

# currently this script expects most of the software to be pre-installed
echo 'installing windows setup'

curl https://sh.rustup.rs -sSf | sh

# code extensions
source code-extensions.sh

# BE FREE MY PRETTIES
./utility/release.sh
