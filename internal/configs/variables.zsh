################################################################################
# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=$HOME/.zsh_history

# This file is sourced by zshrc
if [ command -v nvim ] >/dev/null 2>&1; then
  export VISUAL='nvim'
  export EDITOR='nvim'
else
  export VISUAL='nano'
  export EDITOR='nano'
fi

################################################################################
#                                 Load carapace
# carapace-sh.github.io
# export CARAPACE_BRIDGES='fzf'
# export CARAPACE_BRIDGES='zsh,inshellisense' # optional
# zstyle ':completion:*' format $'\e[2;37mCompleting %d\e[m'
# zstyle ':completion:*:git:*' group-order 'main commands' 'alias commands' 'external commands'
# source <(carapace _carapace zsh)

export ASDF_DIR="$HOME/.config/asdf"
