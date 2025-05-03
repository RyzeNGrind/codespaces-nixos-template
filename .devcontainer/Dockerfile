# Base image for NixOS
FROM ghcr.io/lucernae/devcontainer-nix:main--nixos-arion

# Accept build arguments
ARG NIX_PACKAGES

# Install the specified Nix packages
RUN nix-env -iA nixpkgs.${NIX_PACKAGES}