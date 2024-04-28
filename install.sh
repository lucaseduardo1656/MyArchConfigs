#!/bin/bash

sudo pacman -Syu

sudo pacman -S git neofetch ufw

##sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

## pacman configs
sudo cp config/pacman.conf /etc/pacman.conf

echo "Intalation Complete"
notify-send "Intalation Complete"