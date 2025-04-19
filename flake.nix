{

  description = "My nixos configuration";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-24.11";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixos-cosmic = {
      url = "github:lilyinstarlight/nixos-cosmic";
      inputs.nixpkgs.follows = "nixos-cosmic/nixpkgs-stable";
    };
  };

  outputs = { self, nixpkgs, home-manager, nixos-cosmic, ... }: {
    nixosConfigurations = {
      nixbox = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./config/config.nix
          home-manager.nixosModules.home-manager
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              users.pontus = import ./config/home.nix;
            };
          }
          nixos-cosmic.nixosModules.default
          {
            nix.settings = {
              substituters = [ "https://cosmic.cachix.org/" ];
              trusted-public-keys = [ "cosmic.cachix.org-1:Dya9IyXD4xdBehWjrkPv6rtxpmMRel02smYzA85dPE=" ];
            };
          }
        ];
      };
    };
  };

}
