alias vpn='sudo openvpn --config /etc/openvpn/client/free.ovpn'
alias ff='fastfetch'
alias  l='eza -lh  --icons=auto'                                        # long list
alias ls='eza -1   --icons=auto'                                        # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first'  # long list all
alias ld='eza -lhD --icons=auto'                                        # long list dirs
alias lt='eza --icons=auto --tree'                                      # list folder as tree
alias cd='z'

# ctl aliases 
alias ctl='systemctl'
alias sctl='sudo systemctl'
alias hctl='hyprctl'
alias jctl='journalctl'

# Vim aliases
alias v='nvim'
alias vi='nvim'
alias vim='nvim'

# Tmux aliases
alias t='tmux'
alias ta='tmux attach'
alias tsk='tmux send-keys'
alias tsh='tmux run-shell'
alias tns='tmux new-session'
alias tnw='tmux new-window'
alias tka='tmux kill-server'
alias tks='tmux kill-session'
alias tkp='tmux kill-pane'
alias tkw='tmux kill-window'

# Git aliases
alias g='git'
alias ga='git add'
alias gc='git commit -v -t ~/dotconfig/git/.config/git/template'
alias gd='git diff'
alias gf='git fetch'
alias gl="git log --all --graph --pretty=format:'%C(magenta)%h %C(white) %an %ar%C(auto) %D%n%s%n%n'"
alias gm='git commit --amend'
alias gp='git pull'
alias gs='git status -s'
alias gu='git push'
alias gpr='git pull --rebase'
alias grc='git rebase --continue'
alias grs='git rebase --skip'
alias gcl='git clone'
alias gpu='git pull && git push'
alias gsync='git add -A && git commit -m "automatic commit" && git pull && git push'

# Handy change dir shortcuts
alias mkdir='mkdir -p'
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
