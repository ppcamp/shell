# vim: ts=2 sts=2 sw=2 et:

#bindkey '^[[1;5C' forward-word   # Ctrl+RightArrow to move forward one word
#bindkey '^[[1;5D' backward-word  # Ctrl+LeftArrow to move backward one word
# Ctrl+A 
# Ctrl+E
# Ctrl+W
# Ctrl+Backspace to kill word

# zle -L # to list all registered zsh widgets
# bindkey -M vicmd v edit-command-line

# Zsh-autossugestions
bindkey '^y' forward-word # accept word suggestion
bindkey '^ ' autosuggest-accept # accept suggestion

bindkey '^H' backward-kill-word # ctrl+backspace to kill word

copy-lbuffer() { echo -n "$LBUFFER" | xcp && LBUFFER='' }
zle -N copy-lbuffer copy-lbuffer # register widget to copy
bindkey '^[w' copy-lbuffer       # alt+w copy

bindkey '^I' menu-complete  # TAB cycles forward
bindkey '^[[Z' reverse-menu-complete  # Shift+TAB cycles backward
