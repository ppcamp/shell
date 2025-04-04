# vim: ts=2 sts=2 sw=2 et:


# Alternativaly, can load plugins by typing (passing project name, just like vim)
# `zinit load <plugin>` in the terminal
# or
# `zinit light <plugin>` in the terminal
# or
# `zinit ice wait lucid; zinit light <plugin>` in the terminal

local SKIP_PLUGINS=(
  "rg"
)

local load_plugins() {
  # load each plugin
  for plugin in $PLUGINS; do
    if [ -d "$plugin" ]; then
      plugin_name=$(basename "$plugin")

      if [[ " ${SKIP_PLUGINS[@]} " =~ " $plugin_name " ]]; then
        continue
      fi

      zinit ice wait lucid
      zinit light "$plugin"
      # load_if_exist "$plugin/$plugin_name.plugin.zsh"
    fi
  done
}

local load_all() {
  PLUGINS=$(ls $ZEN/plugins/*)
  load_plugins "$PLUGINS"
}

# "$ZEN/plugins/zsh-users/zsh-history-substring-search"
# "$ZEN/plugins/zsh-users/zsh-interactive-cd"
# "$ZEN/plugins/zsh-users/zsh-256color"
# "$ZEN/plugins/zsh-users/zsh-vi-mode"
# "$ZEN/plugins/zsh-users/zsh-async"
# "$ZEN/plugins/zsh-users/zsh-mime-complist"
local PLUGINS=(
  # "$ZEN/plugins/gh"
  # "$ZEN/plugins/rg"
  # "$ZEN/plugins/zsh-completions"  # This is not a plugin, but a collection of completions
  "$ZEN/plugins/zsh-autosuggestions"
  "$ZEN/plugins/fast-syntax-highlighting"
  "$ZEN/plugins/fzf"
  "$ZEN/plugins/fzf-git"
  "$ZEN/plugins/zoxide"
  "$ZEN/plugins/zsh-fzf-rg"
  "$ZEN/plugins/zsh-listenat"
  "$ZEN/plugins/zsh-lsi"
  "$ZEN/plugins/zsh-pet"
  "$ZEN/plugins/zsh-trash"
  # "marlonrichert/zsh-autocomplete"
  # "zsh-users/zsh-syntax-highlighting"
)

load_plugins
