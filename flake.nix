{

  description = "My nixos configuration";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-24.11";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }: {
    nixosConfigurations = {
      nixbox = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
	modules = [
	  ./config/config.nix
	  home-manager.nixosModules.home-manager
	];
      };
    };
  };

}
