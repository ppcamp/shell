# vim: ts=4 sts=4 sw=4 noet

install-fzf: ## Install fzf
	curl -sLo - "https://github.com/junegunn/fzf/releases/download/v0.60.3/fzf-0.60.3-linux_amd64.tar.gz" | \
		sudo tar -xzC /usr/bin

configure-fzf: ## Configure fzf
	@echo "To configure properly, check the plugins for fzf installed in this repo."	

uninstall-fzf: ## Uninstall fzf
	sudo rm /usr/bin/fzf
