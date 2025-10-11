{
  description = "SharkGirls are Cool";

  inputs = {

    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    stylix = {
      url = "github:nix-community/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  outputs =
    {
      nixpkgs,
      home-manager,
      self,
      stylix,
      ...
    }@inputs:
    {
      nixosConfigurations."Elisheva" = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs; };
        modules = [
          stylix.nixosModules.stylix
          home-manager.nixosModules.home-manager
          ./configuration.nix

          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              extraSpecialArgs = { inherit inputs; };
            };

            home-manager.users.rplakama = {
              imports = [
                ./modules/home.nix
              ];
            };
          }
        ];
      };
    };
}
