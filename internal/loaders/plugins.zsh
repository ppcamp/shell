# vim: ts=2 sts=2 sw=2 et:

local FOLDER="$ZEN/plugins"

# PLUGINS=$(ls $FOLDER/*)
local PLUGINS=(
  # "$ZEN/plugins/gh"
  # "$ZEN/plugins/rg"
  "$FOLDER/zsh-autosuggestions"
  "$FOLDER/fast-syntax-highlighting"
  "$FOLDER/fzf"
  "$FOLDER/fzf-git"
  "$FOLDER/zoxide"
  "$FOLDER/zsh-fzf-rg"
  "$FOLDER/zsh-listenat"
  "$FOLDER/zsh-pet"
  "$FOLDER/zsh-trash"

  "bobsoppe/zsh-ssh-agent" # SSH agent
  # "$FOLDER/zsh-lsi"           # no needed, since eza already does by `eza -lo`
  # "jeffreytse/zsh-vi-mode"    # vi mode improved
  # "Aloxaf/fzf-tab"
  # "zsh-users/zsh-syntax-highlighting"
)

# load each plugin
for plugin in $PLUGINS; do
  if [ -d "$plugin" ]; then
    plugin_name=$(basename "$plugin")

    # wait  -> delay til full startup
    # lucid -> prevents Zinit from printing loading messages for this plugin
    zinit ice wait lucid
    zinit light "$plugin"

    # zinit load "$plugin"
    # load_if_exist "$plugin/$plugin_name.plugin.zsh"
  fi
done

# Alternativaly, can load plugins by typing (passing project name, just like vim)

# `zinit load <plugin>` in the terminal
# or
# `zinit light <plugin>` in the terminal
# or
# `zinit ice wait lucid; zinit light <plugin>` in the terminal
