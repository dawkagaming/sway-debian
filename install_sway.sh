#!/bin/bash

# Install basic packages

sudo apt-get install -y \
	sway \
	swaybg \
	swayidle \
	swaylock \
	waybar \
	xdg-desktop-portal-wlr \
	xwayland \
	greetd \
	grim \
	slurp \
	rofi \
	network-manager \
	htop \
	blueman \
	pavucontrol \
	system-config-printer \
	firewalld \
	nm-connection-editor \
	fonts-jetbrains-mono \
	xdg-desktop-portal-gtk \
	gnome-themes-extra adwaita-qt6 adwaita-icon-theme
	
# Set up color schemes

gsettings set org.gnome.desktop.interface gtk-theme "Adwaita"
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark' gsettings set org.gnome.desktop.interface icon-theme "Adwaita"
	
# Set up greetd

#sudo sed -i "s/--cmd \'\.\*\'\/--cmd \'sway\'/" /etc/greetd/config.toml

# Set up configs
	
mkdir -p ~/.config/sway ~/.config/waybar ~/.config/rofi

cp -rf config/* ~/.config/

# XDG

mkdir ~/{Dokumenty,Muzyka,Obrazy,Pobrane,Pulpit,Wideo}

cat xdg.conf >> ~/.profile

# Install GUI apps

sudo apt-get install -y \
	kcalc \
	okular \
	mousepad \
	thunar \
	thunar-archive-plugin \
	file-roller \
	mpv \
	ristretto \
	skanlite \
	partitionmanager \
	flatpak \
	firefox-esr \
	firefox-esr-l10n-pl \
	thunderbird \
	libreoffice
	
# Manage interfaces using network-manager

sudo bash -c 'echo > /etc/network/interfaces'
	
# Reboot
	
#sudo reboot
