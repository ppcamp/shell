# vim: ts=2 sts=2 sw=2 et

export ZEN="${0:a:h}"
export ZINIT_HOME=$ZEN/zinit

# load utils
source "${ZINIT_HOME}/zinit.zsh"
source $ZEN/internal/utils/loaders.zsh # load path loaders functions

local internal="$ZEN/internal/"

# needs to be loaded in this order
source "$internal/loaders/snippets.zsh"  # 1 - default snippets loading
source "$internal/loaders/paths.zsh"     # 3 - include paths
source "$internal/configs/configs.zsh"   # 4 - shell configs
source "$internal/configs/variables.zsh" # 5 - exports
source "$internal/loaders/plugins.zsh"   # 6 - zsh plugins loading
source "$internal/configs/shortcuts.zsh" # 7 - shortcuts

unset_all # cleanup utils loading

eval "$(starship init zsh)"
