#!/bin/bash

# Use rofi
sed -i 's/dmenu_run/rofi -show run/' ~/.config/i3/config

# Apply Xresources
sudo xrdb ~/.Xresources

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "alias ls=\"ls --color=auto -lah\"" >> ~/.zshrc
echo "alias xsc=\"xclip -selection clipboard\"" >> ~/.zshrc
# Reboot 
sudo reboot now
