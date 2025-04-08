# vim: ts=4 sts=4 sw=4 noet

starship-install: ## Install starship (prompt)
	curl -sS https://starship.rs/install.sh | sh

startship-configure: ## Configure starship (when running outside this repo)
	echo "Adding starship to zsh"
	echo $'cat \'eval "$(starship init zsh)"\' >>  $HOME/.zshrc'
	echo 'Check cat <<EOF > $HOME/.config/starship.toml'
