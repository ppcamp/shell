# vim: ts=2 sts=2 sw=2 et:


source $ZEN/utils/loaders.zsh

local SKIP_PLUGINS=(
  "fast-syntax-highlighting"
  "rg"
)


# load each plugin
for plugin in $ZEN/plugins/*; do
  if [ -d "$plugin" ]; then
    plugin_name=$(basename "$plugin")

    if [[ " ${SKIP_PLUGINS[@]} " =~ " $plugin_name " ]]; then
      continue
    fi

    load_if_exist "$plugin/$plugin_name.plugin.zsh"
  fi
done

unset_all # cleanup
