# vim: ts=2 sts=2 sw=2 et

load_if_exist() {
  local file="$1"
  if [[ -f $file ]]; then
    source "$file"
    # echo "Loaded if exist: $file"
  fi
}

load_snippet_if_exist() {
  local file="$1"
  if [[ -f $file ]]; then
    zinit snippet "$file" || true
    # echo "Loaded snippet if exist: $file"
  fi
}

add_path_if_exist() {
  local dir="$1"
  if [[ -d $dir ]]; then
    export PATH="$dir:$PATH"
    # echo "Added to PATH: $dir"
  fi
}

add_path_if_exec() {
  if [ ! -z "$(command -v $1)" ]; then
    local path_dir
    eval "path_dir=$2"

    export PATH="$PATH:$path_dir"
    # echo "Added to PATH if exec: $path_dir"
  fi
}

deinit_loaders() {
  unset -f load_if_exist
  unset -f add_path_if_exist
  unset -f add_path_if_exec
  unset -f load_snippet_if_exist
  unset -f deinit_loaders
}
