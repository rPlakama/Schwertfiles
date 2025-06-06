{
  description = "System-flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    stylix.url = "github:nix-community/stylix";
    home-manager.url = "github:nix-community/home-manager";
    nixvim.url = "github:nix-community/nixvim";

    # Ensure all flake inputs use the same version of nixpkgs
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    nixvim.inputs.nixpkgs.follows = "nixpkgs";
    stylix.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager, stylix, nixvim, ... }@inputs: {
    nixosConfigurations."Elisheva" = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit inputs; };
      modules = [
        # NixOS Modules
        stylix.nixosModules.stylix
        home-manager.nixosModules.home-manager
        ./configuration.nix

        # Home Manager Configuration integrated into NixOS
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.extraSpecialArgs = { inherit inputs; };

          # Define the user and import the necessary modules for them.
          # This is the corrected part.
          home-manager.users.rplakama = {
            imports = [
              # First, import the nixvim module to make `programs.nixvim` available
              nixvim.homeModules.nixvim

              # Then, import your personal configuration
              ./modules/home.nix
            ];
          };
        }
      ];
    };
  };
}
