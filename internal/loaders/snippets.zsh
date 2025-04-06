# vim: ts=2 sts=2 sw=2 et:

local FOLDER="$ZEN/internal/snippets"

zinit snippet "$FOLDER/aliases.zsh"
zinit snippet "$FOLDER/functions.zsh"

for file in $FOLDER/custom/*.zsh; do
  if [ "$file" != "$0" ]; then
    zinit snippet "$file"
  fi
done
