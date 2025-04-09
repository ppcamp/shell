# vim: ts=2 sts=2 sw=2 et:

local url="https://gist.githubusercontent.com/ppcamp/35a692ae77c9afa19fa6dc0add0a2697/raw"

### aliases
zinit ice wait"0a" lucid
zinit snippet "$url/aliases.sh"

### usefull functions
zinit ice wait"0a" lucid
zinit snippet "$url/functions.sh"

### listenat function (check port for process)
zinit ice wait"0a" lucid
zinit snippet "$url/listenat.sh"

### lll (list with octal repr -- if not using eza)
# no needed, since eza already does by `eza -lo`
# zinit ice wait"0a" lucid
# zinit snippet "$url/lll.sh"

### trash (rm to trash)
# zinit ice wait"0a" lucid
# zinit snippet "$url/trash.sh"
