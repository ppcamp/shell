# vim: ts=4 sts=4 sw=4 noet

fd-install: ## Install fd
	curl -sLo - https://github.com/sharkdp/fd/releases/download/v10.2.0/fd-v10.2.0-x86_64-unknown-linux-musl.tar.gz | tar -xzC /tmp
	sudo mv /tmp/fd-v10.2.0-x86_64-unknown-linux-musl/fd /usr/bin
	mv /tmp/fd-v10.2.0-x86_64-unknown-linux-musl/autocomplete/_fd $ZSH_CUSTOM/completions/
	rm -rfd /tmp/fd-v10.2.0-x86_64-unknown-linux-musl

fd-uninstall: ## Uninstall fd
	sudo rm /usr/bin/fd
