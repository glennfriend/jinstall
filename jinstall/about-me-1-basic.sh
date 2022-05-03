#!/bin/bash

##
sudo apt update && sudo apt upgrade

##
sudo apt install -y curl tree tmux xclip
sudo apt install -y dstat htop net-tools
sudo apt install -y git git-core tig
sudo apt install -y ack-grep
sudo apt install -y vim-gui-common vim-runtime

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
