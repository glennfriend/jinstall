#!/bin/bash

#
# install
#
sudo apt-get install openssh-server


#
# setting
#

# screen
# xrandr --output $(xrandr | grep " connected" | awk '{ print$1 }') --mode 800x600
SCREEN="800x600"
SCREEN="1024x768"
xrandr --output $(xrandr | grep " connected" | awk '{ print$1 }') --mode ${SCREEN}

# 螢幕關閉設定為 60 分鐘
gsettings set org.gnome.desktop.session idle-delay 3600



