# vim: ts=2 sts=2 sw=2 et

export ZEN="${0:a:h}"
export ZINIT_HOME=$ZEN/zinit

# load utils
source "${ZINIT_HOME}/zinit.zsh"
source $ZEN/internal/utils/loaders.zsh # load path loaders functions

local internal="$ZEN/internal/"
# needs to be loaded in this order
source "$internal/loaders/paths.zsh"     # 1
source "$internal/configs/configs.zsh"   # 2
source "$internal/loaders/snippets.zsh"  # 3
source "$internal/loaders/plugins.zsh"   # 4
source "$internal/configs/shortcuts.zsh" # 5

unset_all # cleanup utils loading

eval "$(starship init zsh)"
