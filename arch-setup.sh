#!/bin/bash
sudo pacman -Syu
sudo pacman -S \
	i3 rofi \
	man-db \
	xclip \
	nodejs npm \
    firefox \
	neovim \
	lightdm lightdm-gtk-greeter \
	rxvt-unicode \
	neofetch htop \
	git \
	ripgrep \
	wget curl \
	zsh \
    docker docker-compose \
	unzip

# Create .Xresources
cat .Xresources > ~/.Xresources

# Install DejaVu Nerd Font
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.1/DejaVuSansMono.zip
mkdir -p ~/.local/share/fonts/
unzip DejaVuSansMono.zip -d ~/.local/share/fonts/
rm DejaVuSansMono.zip
fc-cache -fv

# Set up urxvt extensions
mkdir -p ~/.config/urxvt/ext/
git clone https://github.com/simmel/urxvt-resize-font.git resize-font
cp resize-font/resize-font ~/.config/urxvt/ext/

# Get neovim stuff
mkdir -p ~/.config/nvim
cp ./nvim/init.lua ~/.config/nvim/init.lua
cp -r ./nvim/lua ~/.config/nvim/lua
git clone --depth 1 https://github.com/wbthomason/packer.nvim  ~/.local/share/nvim/site/pack/packer/start/packer.nvim
nvim --headless -c "source ~/.config/nvim/lua/james/packer.lua" -c "qall"
nvim --headless -c "PackerSync" -c "qall"
cp -r ./nvim/after ~/.config/nvim/after

# Enable X, i3, and ligthdm
echo "exex i3" > ~/.xinitrc
sudo systemctl enable lightdm
startx

# Reboot
sudo reboot now
