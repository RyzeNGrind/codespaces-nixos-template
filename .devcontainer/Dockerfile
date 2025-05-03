# Base image for NixOS
FROM ghcr.io/lucernae/devcontainer-nix:main--nixos-arion

# Add and update nixpkgs channel
RUN nix-channel --add https://nixos.org/channels/nixpkgs-23.05 nixpkgs && \
    nix-channel --update

# Create nixbld group and add build users
RUN groupadd -r nixbld && \
    for i in $(seq 1 10); do \
      useradd -m -s /sbin/nologin -g nixbld nixbld$i; \
    done

# Install the specified Nix packages
RUN nix-env -iA nixpkgs.dbus nixpkgs.nix