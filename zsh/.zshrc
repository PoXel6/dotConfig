fastfetch
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

# The following lines were added by compinstall
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle :compinstall filename '/home/conch/.config/zsh/.zshrc'

autoload -Uz compinit
compinit

HISTFILE=~/.config/zsh/.histfile
HISTSIZE=1000000
SAVEHIST=1000000
setopt autocd beep extendedglob notify
bindkey -e

source $XDG_CONFIG_HOME/zsh/aliases
source $XDG_CONFIG_HOME/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $XDG_CONFIG_HOME/zsh/plugins/zsh-completions/zsh-completions.plugin.zsh
source $XDG_CONFIG_HOME/zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme

fpath=($XDG_CONFIG_HOME/zsh/plugins/zsh-completions/src $fpath)
# ----------- START OF EXPORTS -----------
# XDG_CONFIG_HOME
# export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
[ -d "$XDG_CONFIG_HOME"/zsh ] || mkdir -p "$XDG_CONFIG_HOME"/zsh
export ZSH=$XDG_CONFIG_HOME/zsh/.oh-my-zsh # Path to your oh-my-zsh installation.

# XDG_DATA_HOME
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle

# XDG_CACHE_HOME
export PYTHONPYCACHEPREFIX=$XDG_CACHE_HOME/python
[ -d "$XDG_CACHE_HOME"/zsh ] || mkdir -p "$XDG_CACHE_HOME"/zsh
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME"/zsh/zcompcache
compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-$ZSH_VERSION
export PYTHON_HISTORY=$XDG_CACHE_HOME/python_history
HISTFILE="$XDG_CACHE_HOME"/zsh/history
export HISTFILE="$XDG_CACHE_HOME"/bash/history

echo hsts-file \= "$XDG_CACHE_HOME"/wget-hsts >> "$XDG_CONFIG_HOME/wgetrc"

export MANPAGER='nvim +Man!'
export EDITOR='nvim'
export TERM='kitty'
export TERMINAL='kitty'

source <(fzf --zsh)
eval "$(zoxide init zsh)"

export PATH="$XDG_DATA_HOME/bin:$PATH"

bindkey -s "^e" "tmux-sessionizer\n"

# ----------- END OF EXPORTS -----------
