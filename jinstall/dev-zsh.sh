#!/bin/bash

# check
echo $SHELL
zsh --version

# install
sudo apt install -y zsh && nl /etc/shells
curl -L http://install.ohmyz.sh | sh

# 改變你的 shell
chsh -s /bin/zsh

# other
# vi ~/.zshrc
