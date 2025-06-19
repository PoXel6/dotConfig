fastfetch

# Create zsh directories if they don't exist
[ -d "$XDG_CONFIG_HOME"/zsh ] || mkdir -p "$XDG_CONFIG_HOME"/zsh
[ -d "$XDG_CACHE_HOME"/zsh ] || mkdir -p "$XDG_CACHE_HOME"/zsh
[[ ! -f $XDG_CONFIG_HOME/zsh/.p10k.zsh ]] || source $HOME/.config/zsh/.p10k.zsh

# Customization
HISTFILE="$XDG_CACHE_HOME"/zsh/history
HISTSIZE=1000000
SAVEHIST=1000000
setopt autocd beep extendedglob notify
bindkey -e

# Scripts
export PATH="$XDG_DATA_HOME/bin:$PATH"

# Plugins
source $XDG_CONFIG_HOME/zsh/aliases.zsh
source $XDG_CONFIG_HOME/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $XDG_CONFIG_HOME/zsh/plugins/zsh-completions/zsh-completions.plugin.zsh
source $XDG_CONFIG_HOME/zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme
source $XDG_CONFIG_HOME/zsh/.zshrc.zni

fpath=($XDG_CONFIG_HOME/zsh/plugins/zsh-completions/src $fpath)

# Defaults
export PAGER='less'
export MANPAGER='nvim +Man!'
export EDITOR='nvim'
export TERM='kitty'
export TERMINAL='kitty'

source <(fzf --zsh)
eval "$(zoxide init zsh)"

# XDG_CONFIG_HOME AKA $HOME/.config/
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc

# XDG_DATA_HOME AKA $HOME/.local/state/
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle

# XDG_CACHE_HOME AKA $HOME/.cache
export PYTHONPYCACHEPREFIX=$XDG_CACHE_HOME/python
export PYTHON_HISTORY=$XDG_CACHE_HOME/python_history
export HISTFILE="$XDG_CACHE_HOME"/bash/history
echo hsts-file \= "$XDG_CACHE_HOME"/wget-hsts >> "$XDG_CONFIG_HOME/wget/wgetrc"

# I don't know what is this
. "$HOME/.local/share/../bin/env"
