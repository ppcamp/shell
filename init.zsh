# vim: ts=2 sts=2 sw=2 et

export ZEN="${0:a:h}"
export ZINIT_HOME=$ZEN/zinit

# load utils
source "${ZINIT_HOME}/zinit.zsh"
source $ZEN/internal/utils/loaders.zsh

local loaders="$ZEN/internal/"
# needs to be loaded in this order
source "$loaders/loaders/paths.zsh"     # 1
source "$loaders/configs/configs.zsh"   # 2
source "$loaders/loaders/plugins.zsh"   # 3
source "$loaders/loaders/snippets.zsh"  # 4
source "$loaders/configs/shortcuts.zsh" # 5

unset_all # cleanup utils loading

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
