# shell
Shell config for my personal use

[Suggestted programs](https://gist.github.com/ppcamp/91dd1fc9ae5f3c78026617720e26795e)
[Bash commands](https://gist.github.com/ppcamp/14f3f5cdc71e66d955e21043ec5d27b7)

## Installation

```sh
cd $HOME/.config

# needs to be recursive, so it can fetch the submodules
git clone --recursive https://github.com/ppcamp/shell

mv ~/.zshrc{,.bak}

# while in the folder where you cloned this repo
echo "source $PWD/shell/init.zsh" > ~/.zshrc
```


> [!TIP]
> Run the make commands to install the tools you need.

> [!NOTE]
> 
> Must be cloned directly in the folder that you plan to keep it, and then
> replace the `~/.zshrc` for this one.


### TODO

- [ ] add the others dotfiles
- [x] add scripts to install tools
- [x] remove submodules, since they are not needed anymore (zinit support)
- [x] improve load performance against omzshc config
- [x] fzf completions not working
- [x] fix paths wrapper import

## Notes

[devhints]

### Performance checking

```sh
~ ❯ time ZDOTDIR=$HOME zsh -i -c exit
ZDOTDIR=$HOME zsh -i -c exit  0.10s user 0.08s system 86% cpu 0.217 total

~ ❯ time ZDOTDIR=/tmp/tmp.OLO5gmIGOV zsh -i -c exit
ZDOTDIR=/tmp/tmp.OLO5gmIGOV zsh -i -c exit  0.04s user 0.05s system 52% cpu 0.185 total
```

<!-- # Fetch latest version from GitHub API -->
<!-- # LATEST_VERSION=$(curl -s https://api.github.com/repos/junegunn/fzf/releases/latest | grep tag_name | cut -d '"' -f 4) -->

[devhints]: https://devhints.io/
