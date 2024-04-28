#!/bin/bash

sudo pacman -Syu

sudo pacman -S git neofetch ufw

read -p 'Need backup? (YES/no): ' backup
backup=${backup:-yes}

# Function to backup existing files
backup_files() {
    local backup_dir="backup/$1"
    mkdir -p "$backup_dir"
    for file in "$@"; do
        if [ -f "$file" ]; then
            cp "$file" "$backup_dir"
        fi
    done
}

# Backup existing files if backup is requested
if [ "$backup" = "yes" ]; then
    backup_files "backup_$(date +%Y%m%d_%H%M%S)" ~/.config/neofetch/config.conf  /etc/pacman.conf ~/.bashrc
    notify-send "Backup Complete"
fi


# Copy new configuration files
echo "Copy new configuration files"
sudo cp ./config/pacman.conf /etc/pacman.conf
sudo cp ./config/neofetch/config.conf ~/.config/neofetch/config.conf
sudo cp ./config/neofetch/logo ~/.config/neofetch/logo
sudo cp ./config/bash/.bashrc ~/.bashrc
sudo cp ./config/konsole/Sombra.colorsheme /usr/share/konsole/Sombra.colorsheme
sudo cp ./config/konsole/Sombra.colorsheme /usr/share/konsole/Sombra.colorsheme


#Install yay
echo "install yay"
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

echo "Intalation Complete"
notify-send "Intalation Complete"