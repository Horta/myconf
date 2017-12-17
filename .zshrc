source $HOME/.zshrc_zplug

# Emacs mode
bindkey -e

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

source ~/.zshrc_vars
source ~/.zshrc_alias
source ~/.zshrc_functions

if [[ -f $HOME/.zshrc_local ]] ; then
    source $HOME/.zshrc_local
fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
