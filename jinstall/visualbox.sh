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


# notebook 把蓋子合起來 防止筆記本進入睡眠模式
# Disable suspend when lid is closed
gsettings set org.gnome.settings-daemon.plugins.power lid-close-ac-action nothing
gsettings set org.gnome.settings-daemon.plugins.power lid-close-battery-action nothing



