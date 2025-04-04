# vim: ts=2 sts=2 sw=2 et:

source $ZEN/utils/loaders.zsh


############################## PATH
# set PATH so it includes user's private bin if it exists
add_path_if_exist "$HOME/.local/bin"

############################## neovim
add_path_if_exist '/opt/nvim-linux-x86_64/bin'

############################# ASDF (Global package manager)
add_path_if_exist "${ASDF_DATA_DIR:-$HOME/.asdf}/shims"

############################## Go
add_path_if_exist '/usr/local/go/bin'
add_path_if_exec 'go' '$(go env GOPATH)/bin'

############################## Rust crates
add_path_if_exec 'cargo' '$(rustc --print sysroot | xargs -I{} realpath "{}/../../bin")'
if [ $? -eq 0 ]; then
    export CARGO_FOLDER="$(rustc --print sysroot | xargs -I{} realpath "{}/../../bin")"
fi

############################## gcloud
add_path_if_exist '/opt/google-cloud-sdk/bin'

############################## node
add_path_if_exec 'node' '$(npm config get prefix)/bin'

############################## python env
load_if_exist "$HOME/.local/venv/bin/activate"


unset_all # cleanup
