export ZEN="${0:a:h}"

autoload -U compinit

source "$ZEN/config/paths.zsh"
source "$ZEN/config/configs.zsh"
source "$ZEN/config/completions.zsh"
source "$ZEN/config/plugins.zsh"
source "$ZEN/config/aliases.zsh"
source "$ZEN/config/functions.zsh"
source "$ZEN/config/shortcuts.zsh"

eval "$(starship init zsh)"
alias sc='source ~/.zshrc_f'
