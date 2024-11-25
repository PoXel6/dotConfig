# Install and configure Oh My Zsh

# ---oh-my-zsh---
if [ -d "$HOME/.oh-my-zsh/" ]; then
  echo "OMZ is already installed."
else
  echo "Installing OMZ..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
# ---P10K---
# Check if Powerlevel10k is installed
if [ -d "$HOME/.oh-my-zsh/custom/themes/powerlevel10k" ]; then
    echo "Powerlevel10k is already installed."
else
    echo "Powerlevel10k is not installed. Installing..."
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/.oh-my-zsh/custom/themes/powerlevel10k
    echo 'ZSH_THEME="powerlevel10k/powerlevel10k"' >>~/.zshrc
    echo "Powerlevel10k has been installed and set as the theme in your .zshrc."
    source ~/.zshrc
fi

# ---ZSH Plugins---
# zsh-256color
if [ -d "$HOME/.oh-my-zsh/custom/plugins/zsh-256color/" ]; then
  echo "zsh-256color is already installed."
else
  echo "installing zsh-256color..."
  git clone https://github.com/chrissicool/zsh-256color.git $HOME/.oh-my-zsh/custom/plugins/zsh-256color
fi

  # zsh-autosuggestions
if [ -d "$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions" ]; then
  echo "zsh-autosuggestions is already installed."
else
  echo "installing zsh-autosuggestions..."
  git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
fi

  # zsh-syntax-highlighting
if [ -d "$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/" ]; then
  echo "zsh-syntax-highlighting is already installed."
else
  echo "installing zsh-syntax-highlighting..."
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
fi

