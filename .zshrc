source ~/.zplugin/bin/zplugin.zsh
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

# Vi Mode
bindkey -v
export KEYTIMEOUT=1

source ~/.zshrc_vars
source ~/.zshrc_alias
source ~/.zshrc_functions

if [[ -f ~/.zshrc_local ]] ; then
    source ~/.zshrc_local
fi

source ~/.zshrc_zplugin
