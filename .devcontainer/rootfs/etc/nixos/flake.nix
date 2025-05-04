{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    nix2container.url = "github:nlewo/nix2container";
  };

  outputs = inputs@{ nixpkgs, home-manager, nix2container, ... }: {
    nixosConfigurations = {
      devcontainer = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./configuration.nix
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.root = import ./home-root.nix;
            home-manager.users.vscode = import ./home-vscode.nix;

            # Optionally, use home-manager.extraSpecialArgs to pass
            # arguments to home.nix
          }
        ];
      };
    };
    containers = nix2container.lib.makeDockerImage {
      name = "devcontainer";
      system = "x86_64-linux";
      config = ./configuration.nix;
    };
  };
}
