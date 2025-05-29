fastfetch
GITSTATUS_LOG_LEVEL=DEBUG
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH=/home/$USER/.oh-my-zsh # Path to your oh-my-zsh installation.
# Path to powerlevel10k theme
source $ZSH/custom/themes/powerlevel10k/powerlevel10k.zsh-theme

# List of plugins used
plugins=( git sudo zsh-256color zsh-autosuggestions zsh-syntax-highlighting )
source $ZSH/oh-my-zsh.sh

EDITOR=/usr/sbin/nvim
VISUAL=/usr/sbin/nvim
SUDO_EDITOR=/usr/sbin/nvim

alias ff='fastfetch'
alias  l='eza -lh  --icons=auto'                                        # long list
alias ls='eza -1   --icons=auto'                                        # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first'  # long list all
alias ld='eza -lhD --icons=auto'                                        # long list dirs
alias lt='eza --icons=auto --tree'                                      # list folder as tree
alias cd='z'

# Vim aliases
alias v='nvim'
alias vi='nvim'
alias vim='nvim'

# Git aliases
alias gs='git status -s'
alias ga='git add -A'
alias gc='git commit -v -t ~/dotconfig/git/.config/git/template'
alias gp='git pull'
alias gu='git push'
alias gm='git commit --amend'
alias gl="git log --all --graph --pretty=format:'%C(magenta)%h %C(white) %an %ar%C(auto) %D%n%s%n'"
alias gcl='git clone'
alias gre='git pull --rebase'
alias grc='git rebase --continue'
alias grs='git rebase --skip'
alias gpu='git pull && git push'
alias gsync='git add -A && git commit -m "automatic commit" && git pull && git push'

# Handy change dir shortcuts
alias mkdir='mkdir -p'
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

bindkey -v
bindkey -s ^f "tmux-sessionizer\n"

source <(fzf --zsh)
eval "$(zoxide init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="$HOME/.local/share/bin:$PATH"
ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_THEME="powerlevel10k/powerlevel10k"
