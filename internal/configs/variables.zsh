################################################################################
# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=$HOME/.cache/zsh/zsh_history
ZSH_COMPDUMP="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/zcompdump"

################################################################################
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

################################################################################
# Load asdf
export ASDF_DIR="$HOME/.config/asdf"

################################################################################
#                                Load mcfly
export MCFLY_FUZZY=2
export MCFLY_KEY_SCHEME=vim

#################################################################################
#                               Load Autosuggestions configs
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
