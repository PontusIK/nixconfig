{
    description = "My nixos configuration";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
        home-manager.url = "github:nix-community/home-manager/master";
        home-manager.inputs.nixpkgs.follows = "nixpkgs";
        stylix.url = "github:danth/stylix";
        nixpkgs.follows = "nixos-cosmic/nixpkgs";
        nixos-cosmic.url = "github:lilyinstarlight/nixos-cosmic";
    };

    outputs = {}
}