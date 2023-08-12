#!/bin/bash


#!/bin/bash

# install
sudo apt-get install openssh-server

# setting screen
# xrandr --output $(xrandr | grep " connected" | awk '{ print$1 }') --mode 800x600
xrandr --output $(xrandr | grep " connected" | awk '{ print$1 }') --mode 1024x768



