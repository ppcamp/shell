# vim: ts=2 sts=2 sw=2 et:
#                               Set up the prompt

# Load completions
# INFO: already done by carapace (see bottom of this file)
fpath+=(
  "$ZEN/completions"
  "$ZEN/plugins/zsh-completions/src"
)

# Use modern completion system
autoload -Uz compinit && compinit

# Use emacs keybindings even if our EDITOR is set to vi
# bindkey -e

setopt histignorealldups sharehistory
setopt EXTENDED_GLOB # used to allow ^ negative glob
setopt interactivecomments # allow comments in shell
setopt NO_BANG_HIST # allow to use ! to see declarative arrays keys

# thanks to https://thevaluable.dev/zsh-completion-guide-examples/
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "\$XDG_CACHE_HOME/zsh/.zcompcache"
# zstyle ':completion:*' menu select # Enable menu selection
# zstyle ':completion:*' menu select=long
zstyle ':completion:*' menu select=2
zstyle ':completion:*' select-prompt '%SScrolling completions: %p%s'
eval "$(dircolors -b)"
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

zstyle ':completion:*:make:*:targets' call-command true
zstyle ':completion:*:*:make:*' tag-order 'targets'


zstyle ':completion:*' rehash true # Rehash completions when a command is run
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*' # Enable case-insensitive matching
zstyle ':completion:*' verbose true # Show descriptions next to options
zstyle ':completion:*' group-name '' # Group similar results together

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

################################################################################
# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=$HOME/.zsh_history


# This file is sourced by zshrc
if [ command -v nvim >/dev/null 2>&1 ]; then
    export VISUAL='nvim'
    export EDITOR='nvim'
else
    export VISUAL='vim'
    export EDITOR='vim'
fi

################################################################################
#                                 Load carapace
# carapace-sh.github.io
# export CARAPACE_BRIDGES='fzf'
# export CARAPACE_BRIDGES='zsh,inshellisense' # optional
# zstyle ':completion:*' format $'\e[2;37mCompleting %d\e[m'
# zstyle ':completion:*:git:*' group-order 'main commands' 'alias commands' 'external commands'
# source <(carapace _carapace zsh)
