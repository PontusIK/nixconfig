{

  description = "My nixos configuration";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-24.11";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixos-cosmic = {
      url = "github:lilyinstarlight/nixos-cosmic";
      inputs.nixpkgs.follows = "nixos-cosmic/nixpkgs-stable";
    };
    nvf = {
      url = "github:notashelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, ... } @ inputs: {
    nixosConfigurations = {
      nixbox = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = {
          inherit inputs;
        };
        modules = [
          ./config/config.nix
          inputs.home-manager.nixosModules.default
          inputs.nixos-cosmic.nixosModules.default
        ];
      };
      wsl = nixpkgs.lib.nixosSystem {
      	system = "x86_64-linux";
	      specialArgs = { inherit inputs; };
	      modules = [ ./config/wsl.nix ];
      };
    };
  };

}
