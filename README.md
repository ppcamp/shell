# shell
Shell config for my personal use


### TODO

- [ ] fzf-tab not working (https://github.com/Aloxaf/fzf-tab)
- [x] improve load performance against omzshc config
- [x] fzf completions not working
- [x] fix paths wrapper import


```sh
~ ❯ time ZDOTDIR=$HOME zsh -i -c exit
ZDOTDIR=$HOME zsh -i -c exit  0.10s user 0.08s system 86% cpu 0.217 total

~ ❯ time ZDOTDIR=/tmp/tmp.OLO5gmIGOV zsh -i -c exit
ZDOTDIR=/tmp/tmp.OLO5gmIGOV zsh -i -c exit  0.04s user 0.05s system 52% cpu 0.185 total
```

