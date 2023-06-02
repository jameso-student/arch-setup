#!/bin/bash

sudo pacman -Syu
sudo pacman -S \
	i3 \
	neovim \
	lightdm \
	lightdm-gtk-greeter \
	rxvt-unicode \
	git \
	wget \
	openssh \
	zsh \
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.1/DejaVuSansMono.zip
