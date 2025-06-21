fastfetch
# Create zsh directories if they don't exist
[ -d "$XDG_CONFIG_HOME"/zsh ] || mkdir -p "$XDG_CONFIG_HOME"/zsh
[ -d "$XDG_CACHE_HOME"/zsh ] || mkdir -p "$XDG_CACHE_HOME"/zsh

# Customization
HISTFILE="$XDG_CACHE_HOME"/zsh/history
HISTSIZE=1000000
SAVEHIST=1000000
setopt autocd beep extendedglob notify
bindkey -e

# Scripts
export PATH="$XDG_DATA_HOME/bin:$PATH"

source $XDG_CONFIG_HOME/zsh/aliases
source $XDG_CONFIG_HOME/zsh/xdg_export
source $XDG_CONFIG_HOME/zsh/defaults

# Plugins
[ -d $XDG_CONFIG_HOME/zsh/plugins/zsh-syntax-highlighting/ ] || git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $XDG_CONFIG_HOME/zsh/plugins/
[ -d $XDG_CONFIG_HOME/zsh/plugins/zsh-completions/ ] || git clone https://github.com/zsh-users/zsh-completions.git $XDG_CONFIG_HOME/zsh/plugins/

source $XDG_CONFIG_HOME/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $XDG_CONFIG_HOME/zsh/plugins/zsh-completions/zsh-completions.plugin.zsh
source $XDG_CONFIG_HOME/zsh/.zshrc.zni

fpath=($XDG_CONFIG_HOME/zsh/plugins/zsh-completions/src $fpath)

# Defaults
source <(fzf --zsh)
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

# I don't know what is this
. "$HOME/.local/share/../bin/env"
