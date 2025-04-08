# vim: ts=4 sts=4 sw=4 noet

INSTALL_DIR ?= $(HOME)/.config/shell
ZSHRC_INIT_FILE=$(INSTALL_DIR)/init.zsh

install: setup-zshrc
	git clone --recursive https://github.com/ppcamp/shell $(INSTALL_DIR)
	@echo "Installed shell at $(INSTALL_DIR)"
	
setup-zshrc: ## Update .zshrc file with current configs
	@echo "source $(ZSHRC_INIT_FILE)">> ~/.zshrc
