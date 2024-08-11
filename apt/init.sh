#!/bin/bash

#
# init.sh
# @natebwangsut <nate.bwangsut@gmail.com>
# ---
# Setting up development machine with apt package manager (ubuntu/debian)
#

# Install latest neovim
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update

# Install nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash

# Install ripgrep
sudo apt-get install ripgrep
