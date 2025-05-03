# Base image for NixOS
FROM ghcr.io/lucernae/devcontainer-nix:main--nixos-arion

# Accept build arguments
ARG NIX_PACKAGES

# Install the specified Nix packages
RUN nix-env -iA nixpkgs.${NIX_PACKAGES}

# Add nixpkgs channel and ensure it's available
RUN nix-channel --add https://nixos.org/channels/nixpkgs-unstable nixpkgs && \
    nix-channel --update

# Create nixbld group and add build users
RUN for i in $(seq 1 10); do \
useradd -m -s /sbin/nologin nixbld$i; \
done && \
groupadd nixbld && \
for i in $(seq 1 10); do \
usermod -a -G nixbld nixbld$i; \
done