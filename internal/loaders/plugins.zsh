# vim: ts=2 sts=2 sw=2 et:

local folder=$ZEN/plugins
local PLUGINS=(
  # "zsh-users/zsh-syntax-highlighting.git"    # syntax highlighting
  # "jeffreytse/zsh-vi-mode"                   # vi mode improved
  # "Aloxaf/fzf-tab"                           # fzf tab completion
  # "bobsoppe/zsh-ssh-agent"                   # SSH agent FIXME: not working
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
  # wait  -> delay til full startup
  # lucid -> prevents Zinit from printing loading messages for this plugin
  # echo "Loading $plugin"
  zinit ice wait lucid
  zinit light "$plugin"

  # zinit load "$plugin"
  # load_if_exist "$plugin/$plugin_name.plugin.zsh"
done

# Alternativaly, can load plugins by typing (passing project name, just like vim)

# `zinit load <plugin>` in the terminal
# or
# `zinit light <plugin>` in the terminal
# or
# `zinit ice wait lucid; zinit light <plugin>` in the terminal
