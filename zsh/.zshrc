fastfetch
GITSTATUS_LOG_LEVEL=DEBUG
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH=/home/pox/.oh-my-zsh # Path to your oh-my-zsh installation.
# Path to powerlevel10k theme
source $ZSH/custom/themes/powerlevel10k/powerlevel10k.zsh-theme

# List of plugins used
plugins=( git sudo zsh-256color zsh-autosuggestions zsh-syntax-highlighting )
source $ZSH/oh-my-zsh.sh

# Helpful aliases
alias du='du -h'    
alias ping='ping -c 3'
alias swappy='swappy -f'

# Better Substitution
alias  l='eza -lh  --icons=auto'                                        # long list
alias ls='eza -1   --icons=auto'                                        # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first'  # long list all
alias ld='eza -lhD --icons=auto'                                        # long list dirs
alias lt='eza --icons=auto --tree'                                      # list folder as tree
alias cd='z'

# Vim aliases
alias vi='nvim'
alias vim='nvim'
alias neovim='nvim'
alias code='nvim'
alias ffn='nvim $(fzf -m --preview="bat --color=always {}")'

# Handy change dir shortcuts
alias mkdir='mkdir -p'
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# aliases for changing system configuration
alias keybindings='nvim ~/.config/hypr/keybindings.conf'
alias hyprsetting='nvim ~/.config/hypr/hyprland.conf'
alias zshconfig='nvim ~/.zshrc'                                           # Opens zsh's configs

bindkey -v

source <(fzf --zsh)
eval "$(zoxide init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
