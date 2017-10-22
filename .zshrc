source ~/.zplug/init.zsh

zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "mafredri/zsh-async", from:github
zplug "zsh-users/zsh-syntax-highlighting"
zplug "lib/clipboard", from:oh-my-zsh
zplug "peterhurford/git-aliases.zsh"
zplug "zsh-users/zsh-autosuggestions"
zplug "themes/agnoster", from:oh-my-zsh
zplug "b4b4r07/enhancd", use:init.sh

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load

# Emacs mode
bindkey -e

source ~/.zshrc_vars
source ~/.zshrc_path
source ~/.zshrc_alias
source ~/.zshrc_functions
source ~/.zshrc_clip

if [[ "$(hostname)" == *"ebi"* ]]; then
    source activate default
fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
