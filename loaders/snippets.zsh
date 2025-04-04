# vim: ts=2 sts=2 sw=2 et:

zinit snippet "$ZEN/snippets/aliases.zsh"
zinit snippet "$ZEN/snippets/functions.zsh"

for file in $ZEN/snippets/custom/*.zsh; do
  if [ "$file" != "$0" ]; then
    zinit snippet "$file"
  fi
done
