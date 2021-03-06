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

export SHELL=$(which zsh)
export EDITOR='vim'
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
alias sdist="python setup.py sdist"
alias walter="ssh walter.danilohorta.online"
alias itmux='tmux -CC new-session -A -s horta-session'
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
alias gs='git status'
alias ga='git add'
alias gaa='git add --all'
alias gc='git commit'
alias gch='git checkout'
alias gp='git push'
alias gm='git merge'
alias l='exa'
alias e='exit'
alias t='tmux'
alias s='ssh'
alias m='mosh'
alias vim='nvim'
alias v='nvim'
alias w='ssh walter.danilohorta.online'
alias update-python-format="pip install python-language-server yapf pyflakes jedi rope mccabe pycodestyle pydocstyle pyls-mypy pyls-isort --upgrade"

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

# Disable magic enter from the minimal prompt plugin
MNML_INFOLN=()
MNML_MAGICENTER=()
MNML_USER_CHAR='$'
MNML_NOMRAL_CHAR='-'
MNML_INSERT_CHAR='>'
MNML_PROMPT=(mnml_ssh mnml_status mnml_keymap)

# added by travis gem
[ -f /Users/horta/.travis/travis.sh ] && source /Users/horta/.travis/travis.sh
