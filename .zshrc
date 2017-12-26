source ~/.zplugin/bin/zplugin.zsh
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

# Vi Mode
bindkey -v
export KEYTIMEOUT=1

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

source ~/.zshrc_vars
source ~/.zshrc_alias
source ~/.zshrc_functions

if [[ -f ~/.zshrc_local ]] ; then
    source ~/.zshrc_local
fi

source ~/.zshrc_zplugin
