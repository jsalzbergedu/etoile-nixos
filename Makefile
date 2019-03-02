.PHONY: usage
usage:
	@echo "To install to nixos and rebuild, run # make install"

.PHONY: install
install: system/configuration.nix
	cp ./system/configuration.nix /etc/nixos/configuration.nix
	nixos-rebuild boot
