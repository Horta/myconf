source ~/.zplug/init.zsh

zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:"pure.zsh", from:github, as:theme
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "b4b4r07/zsh-vimode-visual", defer:3
zplug "plugins/vi-mode", from:oh-my-zsh
zplug "lib/clipboard", from:oh-my-zsh
zplug "peterhurford/git-aliases.zsh"
zplug "zsh-users/zsh-autosuggestions"


if ! zplug check --verbose; then
   printf "Install? [y/N]: "
   if read -q; then
       echo; zplug install
   fi
fi

zplug load

source ~/.zshrc_vars
source ~/.zshrc_path
source ~/.zshrc_alias
source ~/.zshrc_functions
source ~/.zshrc_clip

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
