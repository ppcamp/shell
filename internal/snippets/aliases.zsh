# vim: ts=2 sts=2 sw=2 et:

# Aliases can also be defined in PET, to find it easier
# use unset to unload some alias

### nvim
alias n='nvim'
alias vim='nvim'

### bat/batcat
# alias bat='batcat'

### sudo with user's path
# Note that when running sinde "sudo su" it won't work
alias sudo='sudo env PATH=$PATH'

### size in human readable format
alias duh='du -sh'

### permissions
alias perm='stat --format="%a %n"'

### Dir stack (see pushd and popd)
alias dirs='dirs -v'

### cd
alias -g '...'='../..'
alias -g '....'='../../..'
alias -- -='cd -'
#alias 1='cd -1'

### listing
alias ls='eza'
alias l1='eza -1'
alias lsf='eza -f'
alias lsd='eza -D'
alias la='eza -A'
alias ll='eza -l --icons'
alias l='eza -l --git-ignore'
alias tree='eza --tree'

### python3 (w/ python2 installed)
alias python='python3'
alias pip='pip3'
alias py='python'

### Jobs bash
alias backgroundJob='bg'         # Ctrl+Z
alias foregroundJob='fg'         # Ctrl+Z .. fg %JOB_NUMBER
alias jobsInBackground='jobs -l' # see jobs
alias jl='jobs -l'

### list my aliases
alias myaliases='rg -e "^alias " .bash_aliases .bashrc .zshrc'

### static server
alias sserve='python3 -m http.server'

### wsl network conn
alias checkconn='ping 8.8.8.8'

### Copy alternatives
#alias xcp='xclip -selection clipboard' # for linux (install by apt)
alias xcp='clipcopy' # for linux (install by apt) -- clipcopy can be defined as
alias xpb='clippaste'

### others
alias cls='clear'
alias h='history'
alias hist='history'
alias table='column -t'

### open files
# see https://pt.linux-console.net/?p=19677
alias -s {py,go,mod,html,js,ts,zsh,md}=nvim

### Alias for kitty terminal (see images on terminal)
alias icat='kitten icat'

### Github
alias gists='gh gist'
alias copilot='gh copilot'

### Podman
alias pd='podman'

### difft
alias dift='difft'

### Source
alias sc='source'

### Custom
alias test_omzsh='time ZDOTDIR=$HOME/omzsh/ zsh -i -c exit'
alias test_sh='time ZDOTDIR=$HOME zsh -i -c exit'
