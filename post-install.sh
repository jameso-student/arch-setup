#!/bin/bash

# Use rofi
sed -i 's/dmenu_run/rofi -show run/' ~/.config/i3/config

# Apply Xresources
sudo xrdb ~/.Xresources

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Reboot 
sudo reboot now
