#!/bin/bash

# Use rofi
sed -i 's/dmenu_run/rofi -show run/' ~/.config/i3/config

# Apply Xresources
sudo xrdb ~/.Xresources

# Reboot 
sudo reboot now
