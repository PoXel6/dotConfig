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
source $XDG_CONFIG_HOME/zsh/xdg_export
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

# I don't know what is this
. "$HOME/.local/share/../bin/env"
