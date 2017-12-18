#source $HOME/.zshrc_zplug
#
## Emacs mode
#bindkey -e
#
#bindkey '^[[A' history-substring-search-up
#bindkey '^[[B' history-substring-search-down
#
#
#
#test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

source '/Users/horta/.zplugin/bin/zplugin.zsh'
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

source ~/.zshrc_vars
source ~/.zshrc_alias
source ~/.zshrc_functions

if [[ -f ~/.zshrc_local ]] ; then
    source ~/.zshrc_local
fi

source ~/.zshrc_zplugin
