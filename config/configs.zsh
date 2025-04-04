# vim: ts=2 sts=2 sw=2 et:



# This file is sourced by zshrc
if [ command -v nvim >/dev/null 2>&1 ]; then
    export VISUAL='nvim'
    export EDITOR='nvim'
else
    export VISUAL='vim'
    export EDITOR='vim'
fi


################################################################################
#                               Set up the prompt

# autoload -Uz promptinit
# promptinit
# prompt adam1

# setopt histignorealldups sharehistory

# # Use emacs keybindings even if our EDITOR is set to vi
# bindkey -e

# # Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=$HOME/.zsh_history

setopt EXTENDED_GLOB # used to allow ^ negative glob
setopt interactivecomments # allow comments in shell

# thanks to https://thevaluable.dev/zsh-completion-guide-examples/

# zstyle ':completion:*' use-cache on
# zstyle ':completion:*' cache-path "\$XDG_CACHE_HOME/zsh/.zcompcache"
# zstyle ':completion:*' menu select

zstyle ':completion:*:make:*:targets' call-command true
zstyle ':completion:*:*:make:*' tag-order 'targets'


# Use modern completion system

# Load completions
fpath+=("$ZEN/completions")
autoload -Uz compinit && compinit

zstyle ':completion:*' verbose yes
# compaudit | xargs chmod g-w,o-w


# zstyle ':completion:*' auto-description 'specify: %d'
# zstyle ':completion:*' completer _expand _complete _correct _approximate
# # zstyle ':completion:*' format 'Completing %d'
# # zstyle ':completion:*' group-name ''
# zstyle ':completion:*' menu select=2
# eval "$(dircolors -b)"
# zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
# zstyle ':completion:*' list-colors ''
# zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
# zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
# zstyle ':completion:*' menu select=long
# zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
# zstyle ':completion:*' use-compctl false
# zstyle ':completion:*' verbose true

# zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
# zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'


# disable sort when completing `git checkout`
zstyle ':completion:*:git-checkout:*' sort false
# set descriptions format to enable group support
# NOTE: don't use escape sequences (like '%F{red}%d%f') here, fzf-tab will ignore them
zstyle ':completion:*:descriptions' format '[%d]'
# set list-colors to enable filename colorizing
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# force zsh not to show completion menu, which allows fzf-tab to capture the unambiguous prefix
zstyle ':completion:*' menu no
# preview directory's content with eza when completing cd
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'
# custom fzf flags
# NOTE: fzf-tab does not follow FZF_DEFAULT_OPTS by default
zstyle ':fzf-tab:*' fzf-flags --color=fg:1,fg+:2 --bind=tab:accept
# To make fzf-tab follow FZF_DEFAULT_OPTS.
# NOTE: This may lead to unexpected behavior since some flags break this plugin. See Aloxaf/fzf-tab#455.
zstyle ':fzf-tab:*' use-fzf-default-opts yes
# switch group using `<` and `>`
zstyle ':fzf-tab:*' switch-group '<' '>'
