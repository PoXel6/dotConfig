#!/bin/bash

# Update the system package database and upgrade any installed packages
sudo pacman -Syu

# Check if yay is installed
if ! command -v yay &> /dev/null
then
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
sudo pacman -S --needed neovim eza tmux fzf bat man-db zsh stow fastfetch zsh-completions bash-completion

# Clone the dotConfig repository and stow configuration files
if git clone https://github.com/PoXel6/dotConfig.git
then
    stow nvim 
    stow tmux 
    stow zsh 
    stow git
else
    echo "Failed to clone dotConfig repository or change directory."
    exit 1
fi
# Install and configure Oh My Zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install powerlevel10k theme
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/.oh-my-zsh/custom/themes/powerlevel10k

# Install zsh plugins
# zsh-256color
    git clone https://github.com/chrissicool/zsh-256color.git $HOME/.oh-my-zsh/custom/plugins/zsh-256color

# zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions

# zsh-syntax-highlighting
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

chsh -s /bin/zsh
exec zsh
