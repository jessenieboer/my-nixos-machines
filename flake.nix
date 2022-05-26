{
  description = "Configs for all my personal machines";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-21.11";
  };

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
      };
      lib = nixpkgs.lib;
    in {
      nixosConfigurations = {
        main-laptop = lib.nixosSystem {
          inherit system;
          modules = [
            ./system/common.nix
            ./system/uiu57o6a.nix
            ./user/common-users.nix
          ];
        };
      };
    };
}
      
