#!/bin/bash

sudo pacman -Syu

sudo pacman -S git neofetch ufw

pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

