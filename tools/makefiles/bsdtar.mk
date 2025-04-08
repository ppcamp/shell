# vim: ts=4 sts=4 sw=4 noet


bsdtar-install: ## Add bsdtar (tar improved with zip)
	sudo apt install -y libarchive-tools

bsdtar-uninstall: ## Remove bsdtar
	sudo apt autoremove -y libarchive-tools
