#!/bin/bash

##
sudo apt update && sudo apt upgrade

##
sudo apt install -y curl tree tmux xclip
sudo apt install -y dstat htop net-tools
sudo apt install -y git git-core tig
sudo apt install -y ack-grep
sudo apt install -y vim vim-gui-common vim-runtime

## bat = cat
sudo apt install -y bat
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat


## 進度顯示
sudo apt install pv

##
echo ""
echo "--------------------"
echo "you can install"
echo "--------------------"
echo "fzf    - https://github.com/junegunn/fzf"
echo "mytop"
echo "imagemagick"
