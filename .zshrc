source ~/.zplugin/bin/zplugin.zsh
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

# emacs style
bindkey -e

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

export SHELL=zsh
export EDITOR='vim'
export HOMEBREW_GITHUB_API_TOKEN=cd468c83cf96297451379164245582567c1a87bd
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=245"
export HISTFILE=~/.zhistory
export SAVEHIST=500000
export HISTSIZE=$SAVEHIST

setopt inc_append_history
setopt share_history
unset SSH_ASKPASS

alias ip="ipython"
alias pt="python setup.py test"
alias pd="python setup.py develop"
alias pi="python setup.py install"
alias walter="mosh walter.danilohorta.online"
alias itmux='tmux -CC new-session -A -s horta-session'
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
alias ga='git add'
alias gaa='git add --all'
alias gc='git commit'
alias gp='git push'
alias ll='exa'
alias e='exit'
alias t='tmux'

function lazygit() {
    git add .
    git commit -a -m "$*"
    git push
}

function totp() {
    oathtool --totp -b $(<~/".totp_${1:-google}") | tr -d '[:space:]'
}

if [[ -f ~/.zshrc_local ]] ; then
    source ~/.zshrc_local
fi

source ~/.zshrc_zplugin
