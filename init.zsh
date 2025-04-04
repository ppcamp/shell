# vim: ts=2 sts=2 sw=2 et

export ZEN="${0:a:h}"
export ZINIT_HOME=$ZEN/zinit

# load utils
source "${ZINIT_HOME}/zinit.zsh"
source $ZEN/utils/loaders.zsh

source "$ZEN/loaders/paths.zsh"
source "$ZEN/loaders/configs.zsh"
source "$ZEN/loaders/plugins.zsh"
source "$ZEN/loaders/shortcuts.zsh"
source "$ZEN/loaders/snippets.zsh"

unset_all # cleanup utils loading

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
