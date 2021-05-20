#!/bin/bash

sudo pacman -Suy
sudo pacman -S tree vlc vim thunderbird i3 okular firefox git snapd
sudo systemctl enable --now snapd.socket
sudo snap install discord
