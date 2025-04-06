# vim: ts=2 sts=2 sw=2 et:
#                               Set up the prompt

# Load completions
# INFO: already done by carapace (see bottom of this file)
fpath+=(
  "$ZEN/internal/completions"
  "$ZEN/internal/plugins/zsh-completions/src"
)

# Use modern completion system
autoload -Uz compinit && compinit

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -v


setopt AUTO_CD             # cd to a directory if the name is given
setopt AUTO_PUSHD          # automatically push dirs to stack on cd
setopt PUSHD_IGNORE_DUPS   # don't push duplicates to stack
setopt PUSHD_MINUS         # popd with - goes to last dir
setopt PUSHD_SILENT        # don't show pushd output
setopt PUSHD_TO_HOME       # pushd with no args goes to $HOME
setopt EXTENDED_GLOB       # used to allow ^ negative glob
setopt interactivecomments # allow comments in shell
setopt NO_BANG_HIST        # allow to use ! to see declarative arrays keys
setopt histignorealldups sharehistory

# thanks to https://thevaluable.dev/zsh-completion-guide-examples/
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "\$XDG_CACHE_HOME/zsh/.zcompcache"
# zstyle ':completion:*' menu select # Enable menu selection
# zstyle ':completion:*' menu select=long
zstyle ':completion:*' menu select=2
zstyle ':completion:*' select-prompt '%SScrolling completions: %p%s'
eval "$(dircolors -b)" # color suggestions
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

zstyle ':completion:*:make:*:targets' call-command true
zstyle ':completion:*:*:make:*' tag-order 'targets'


zstyle ':completion:*' rehash true # Rehash completions when a command is run
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*' # Enable case-insensitive matching
zstyle ':completion:*' verbose true # Show descriptions next to options
zstyle ':completion:*' group-name '' # Group similar results together

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'


# WARN: https://github.com/disrupted/dotfiles/blob/master/.zshrc

