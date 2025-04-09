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
  if type "$1" &>/dev/null; then
    local path_dir
    eval "path_dir=$2"
    export PATH="$PATH:$path_dir"
    # echo "Added to PATH if exec: $path_dir"
    return 0
  fi
  return 1
}

deinit_loaders() {
  unset -f load_if_exist
  unset -f add_path_if_exist
  unset -f add_path_if_exec
  unset -f load_snippet_if_exist
  unset -f deinit_loaders
}
