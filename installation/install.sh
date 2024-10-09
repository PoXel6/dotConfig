#!/bin/bash

# Update the system package database and upgrade any installed packages
sudo pacman -Syu

# Check if yay is installed
if ! command -v yay &>/dev/null; then
	echo "yay is not installed. Installing yay..."
	sudo pacman -S --needed git base-devel

	# Check if git and base-devel installed successfully
	if [ $? -eq 0 ]; then
		git clone https://aur.archlinux.org/yay.git
		cd yay

		# Build and install yay, and check for success
		makepkg -si
		if [ $? -eq 0 ]; then
			echo "yay installed successfully."
		else
			echo "Failed to install yay."
			exit 1
		fi
	else
		echo "Failed to install prerequisites (git, base-devel)."
		exit 1
	fi
else
	echo "yay is already installed."
fi

# Install additional packages
sudo pacman -S --needed neovim eza tmux fzf bat man-db zsh stow fastfetch bash-completion zoxide

# Clone the dotConfig repository and stow configuration files
if [ -d "$HOME/dotconfig/" ]; then
	echo "dotFiles are already clones"
else
	git clone https://github.com/PoXel6/dotConfig.git
fi

if [ -d "~/.tmux" ]; then
	echo "tpm is already installed."
else
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

chsh -s /bin/zsh
exec zsh
