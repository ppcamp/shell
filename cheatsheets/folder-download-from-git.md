
- Extract a file from a Github repo folder

```sh
curl -sL https://github.com/ohmyzsh/ohmyzsh/archive/refs/heads/master.zip | \
    btar -x --strip-components=3 'ohmyzsh-master/plugins/ssh-agent/*'
```

- Clone a specific folder from a Github repo

```sh
git clone --no-checkout --recursive https://github.com/ohmyzsh/ohmyzsh
cd ohmyzsh
git sparse-checkout init --cone
git sparse-checkout set plugins/ssh-agent
git checkout master
```
