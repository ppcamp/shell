# vim: ts=2 sts=2 sw=2 et:

# reload everything (rebuild aliases and functions)
# usually required when updating snippet
function zreload() {
  zinit delete --all
  # zinit self-update     # only if plan to update it
  # zinit update --all    # everything
  zinit update --snippets # snippets only
}

# list aliases and grep from args
function agr() {
  alias | rg $@
}

# grep lines to copy
function grepln() {
  sed -n "$1,$2p" $3 | xcp
}

# append a minus, so zshell understand the number from dirs
function cd() {
  if [[ $1 =~ ^[0-9]+$ ]]; then
    1="-$1"
  fi

  builtin cd "$1"
}
