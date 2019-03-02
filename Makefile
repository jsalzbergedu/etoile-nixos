.PHONY: usage
usage:
	@echo "To install to nixos and rebuild, run # make install"
	@echo "To install dotfiles etc., run $ make install-user"

.PHONY: install
install: system/configuration.nix
	cp ./system/configuration.nix /etc/nixos/configuration.nix
	nixos-rebuild boot

.PHONY: install-user
install-user: user/direnvrc
	mkdir -p ~/.config/direnv
	cp user/direnvrc ~/.config/direnv/direnvrc
