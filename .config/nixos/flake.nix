{
  description = "System-flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    stylix.url = "github:nix-community/stylix";

    home-manager.url = "github:nix-community/home-manager";

    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    stylix.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = {
    nixpkgs,
    home-manager,
    stylix,
    ...
  } @ inputs: {
    nixosConfigurations."Elisheva" = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = {inherit inputs;};
      modules = [
        stylix.nixosModules.stylix
        home-manager.nixosModules.home-manager
        ./configuration.nix

        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.extraSpecialArgs = {inherit inputs;};

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
