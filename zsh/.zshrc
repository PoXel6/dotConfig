fastfetch
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH=/home/$USER/.oh-my-zsh # Path to your oh-my-zsh installation.
# Path to powerlevel10k theme
source $ZSH/custom/themes/powerlevel10k/powerlevel10k.zsh-theme

# List of plugins used
plugins=( git sudo zsh-256color zsh-autosuggestions zsh-syntax-highlighting )

source $ZSH/oh-my-zsh.sh
source <(fzf --zsh)
eval "$(zoxide init zsh)"

bindkey -e
source ~/.config/zsh/aliases
export MANPAGER='nvim +Man!'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="$HOME/.local/share/bin:$PATH"
ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_THEME="powerlevel10k/powerlevel10k"
