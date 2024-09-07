# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
ZSH=/home/pox/.oh-my-zsh

# Path to powerlevel10k theme
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# List of plugins used
plugins=( git sudo zsh-256color zsh-autosuggestions zsh-syntax-highlighting )
source $ZSH/oh-my-zsh.sh

# Helpful aliases
alias  c='clear'                                                        # clear terminal
alias du='du -h'                                                        # du is always human-readable
alias ii='dolphin .'                                                    # Opens dolphin in current dir
alias  l='eza -lh  --icons=auto'                                        # long list
alias ls='eza -1   --icons=auto'                                        # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first'  # long list all
alias ld='eza -lhD --icons=auto'                                        # long list dirs
alias lt='eza --icons=auto --tree'                                      # list folder as tree

alias update='sudo apt update && sudo apt upgrade'

# Vim aliases
alias vi='nvim'
alias vim='nvim'
alias neovim='nvim'
alias code='nvim'

# Handy change dir shortcuts
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# aliases for changing system configuration
alias keybindings='nvim ~/.config/hypr/keybindings.conf'
alias hyprsetting='nvim ~/.config/hypr/hyprland.conf'
alias zshconfig='nvim ~/.zshrc'                                           # Opens zsh's configs

# Always mkdir a path (this doesn't inhibit functionality to make a single dir)
alias mkdir='mkdir -p'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

bindkey -v

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#GITSTATUS_LOG_LEVEL=DEBUG

# To customize prompt, run `p10k configure` or edit ~/personaldotfiles/zsh/.p10k.zsh.
[[ ! -f ~/personaldotfiles/zsh/.p10k.zsh ]] || source ~/personaldotfiles/zsh/.p10k.zsh
