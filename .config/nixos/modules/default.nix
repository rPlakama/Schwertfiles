{
  imports = [

    # System-level configurations
    ./nix-configs/hardware-software.nix
    ./nix-configs/programs.nix
    ./nix-configs/services.nix
    ./nix-configs/stylix.nix
    ./nix-configs/users.nix

    # Package definitions
    ./packages/dev_packages.nix
    ./packages/system_packages.nix
    ./packages/user_packages.nix
  ];
}
