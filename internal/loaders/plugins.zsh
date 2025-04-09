# vim: ts=2 sts=2 sw=2 et:

local folder=$ZEN/plugins
local PLUGINS=(
  # "zsh-users/zsh-syntax-highlighting.git"    # syntax highlighting
  # "Aloxaf/fzf-tab"                           # fzf tab completion

  "$folder/gh"                                 # gh completion and copilot functions
  "$folder/fzf"                                # add support to fzf keybindings (ctrl+t, alt+c,ctrl+r)
  "zsh-users/zsh-autosuggestions.git"          # virtual suggestions
  "zsh-users/zsh-completions.git"              # additional completions
  "zdharma-continuum/fast-syntax-highlighting" # fast syntax highlighting
  "ppcamp/fzf-git"                             # fzf git keybindings/shorcuts for zsh
  "ppcamp/zsh-pet"                             # completion and ctrl+r saving option
  "ppcamp/zsh-fzf-rg"                          # rg+fzf search widget with live preview
  "$folder/zoxide"                             # zoxide (cd improved) integration and init
)

# load each plugin
for plugin in $PLUGINS; do
  # echo "Loading $plugin"
  zinit ice wait"0a" lucid
  zinit light "$plugin"
done

zinit ice lucid wait"0a" from"gh-r" as"program" atload'eval "$(mcfly init zsh)"'
zinit light cantino/mcfly
