{
  imports = [
    # System-level configurations
    ./nix-configs/hardware-software.nix
    ./nix-configs/programs-services.nix
    ./nix-configs/stylix.nix
    ./nix-configs/users.nix
    ./nix-configs/services.nix
    ./nix-configs/mysql.nix

    # Package definitions
    ./packages/dev_packages.nix
    ./packages/system_packages.nix
    ./packages/user_packages.nix
  ];
}
