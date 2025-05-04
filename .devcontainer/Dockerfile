# Base image for NixOS
FROM ghcr.io/lucernae/devcontainer-nix:flake

# Set environment variables for Nix and Flakes
ENV USE_DIRENV="true" \
    USE_FLAKE="true" \
    INSTALL_ROOT_PACKAGES="" \
    PREBUILD_DEFAULT_PACKAGE="default.nix" \
    PREBUILD_NIX_SHELL="shell.nix" \
    PREBUILD_FLAKE="" \
    PREBUILD_FLAKE_RUN="" \
    PREBUILD_FLAKE_DEVELOP="" \
    ADDITIONAL_NIX_CHANNEL="" \
    ADDITIONAL_NIX_FLAKE_REGISTRY="" \
    PREBUILD_HOME_MANAGER="" \
    PREBUILD_HOME_MANAGER_FLAKE=""

# Switch to root user for setup
USER root

# Set up Nix channels, environment, and required directories
RUN set -ex \
    # Fix missing or broken Nix channel links
    && mkdir -p /root/.nix-profile /root/.nix-defexpr /nix/var/nix/profiles/per-user/root/channels \
    && [ -L /root/.nix-profile ] || ln -s /nix/var/nix/profiles/per-user/root/profile /root/.nix-profile \
    && [ -L /root/.nix-defexpr/channels ] || ln -s /nix/var/nix/profiles/per-user/root/channels /root/.nix-defexpr \
    && [ -L /root/.nix-channels ] || ln -s /nix/var/nix/profiles/per-user/root/channels /root/.nix-channels \
    # Add and update nixpkgs channel
    && nix-channel --add https://nixos.org/channels/nixpkgs-24.11 nixpkgs \
    && nix-channel --update \
    # Ensure os-release exists
    && if [ ! -f /etc/os-release ]; then \
          echo "NAME=NixOS" > /etc/os-release && \
          echo "VERSION=24.11" >> /etc/os-release && \
          echo "ID=nixos" >> /etc/os-release; \
       fi \
    # Clean up
    && nix-store --gc \
    && nix-collect-garbage -d

# Install additional Nix packages
RUN nix-env -iA nixpkgs.dbus nixpkgs.nix

# Switch back to vscode user for container usage
USER vscode