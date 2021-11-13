#!/bin/sh

vimrc = vimrc

if [[-f $vimrc]

then
        cp $vimrc /home/$USER/.vimrc

else
        echo "No vimrc on config dir"
fi

echo "pacman update"
sudo pacman -Suy

echo "basic utils installation"
sudo pacman -S tree boost vlc vim thunderbird i3 okular firefox git snapd python rofi feh htop wireshark kicad
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

sudo snap install clion --classic
sudo snap install pycharm-professional --classic

echo "yay installation"
sudo pacman -S --needed git base-devel
cd /tmp && git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

cd ~

echo "yay packages"
yay -Sy
yay -S discord

echo "useful libs"
cd /tmp
git clone -b master https://github.com/pocoproject/poco.git
cd poco
mkdir cmake-build
cd cmake-build
cmake .. && cmake --build .
sudo cmake --build . --target install
