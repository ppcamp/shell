# vim: ts=2 sts=2 sw=2 et

load_if_exist() {
  local file="$1"
  if [[ -f $file ]]; then
    source "$file"
    # echo "Loaded if exist: $file"
    return 0
  fi
  return 1
}

load_snippet_if_exist() {
  local file="$1"
  if [[ -f $file ]]; then
    zinit snippet "$file" || true
    # echo "Loaded snippet if exist: $file"
    return 0
  fi
  return 1
}

add_path_if_exist() {
  local dir="$1"
  if [[ -d $dir ]]; then
    export PATH="$dir:$PATH"
    # echo "Added to PATH: $dir"
    return 0
  fi
  return 1
}

add_path_if_exec() {
  local cmd=$1
  local path_dir=$2
  # if type "$1" &>/dev/null; then
  if command -v "$cmd" >/dev/null 2>&1; then
    path_dir=${~path_dir}  # expand ~ and variables
    [[ ":$PATH:" != *":$path_dir:"* ]] && PATH="$PATH:$path_dir"
    return 0
  fi
  return 1
}

deinit_loaders() {
  # unset -f
  unfunction load_if_exist
  unfunction add_path_if_exist
  unfunction add_path_if_exec
  unfunction load_snippet_if_exist
  unfunction deinit_loaders
}

# cleanup loaders after first zsh cmd prompt
add-zsh-hook precmd deinit_loaders
