# vim: ts=2 sts=2 sw=2 et

export ZEN="${0:a:h}"
export ZINIT_HOME=$ZEN/zinit
local internal="$ZEN/internal/"

# load utils
source "${ZINIT_HOME}/zinit.zsh"
source $ZEN/internal/utils/loaders.zsh # load path loaders functions

# needs to be loaded in this order
source "$internal/loaders/paths.zsh"     # include paths
source "$internal/configs/configs.zsh"   # shell configs
source "$internal/configs/variables.zsh" # exports
source "$internal/loaders/plugins.zsh"   # zsh plugins loading
source "$internal/configs/shortcuts.zsh" # shortcuts
source "$internal/loaders/snippets.zsh"  # default snippets loading

deinit_loaders # cleanup utils loading

eval "$(starship init zsh)"
