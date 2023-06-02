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
	rofi \
	unzip

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Create .Xresources
cat xresources_setup > ~/.Xresources

# Install DevaVu Nerd Font
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.1/DejaVuSansMono.zip
mkdir -p ~/.local/share/fonts/
cp DejaVuSansMono.zip ~/.local/share/fonts/
unzip ~/.local/share/fonts/DejaVuSansMono.zip 
rm DejaVuSansMono.zip
rm ~/.local/share/fonts/DejaVuSansMono.zip
fc-cache -fv

# Get neovim stuff
cp ./nvim -R ~/config/

# Enable X, i3, and ligthdm
echo "exex i3" > ~/.xinitrc
sudo systemctl enable lightdm
startx

