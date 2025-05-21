{ config, pkgs, ... }:

{

  home.username = "rplakama";
  home.homeDirectory = "/home/rplakama";
  home.stateVersion = "24.11";
  nixpkgs.config.allowUnfree = true;

  imports = [

    ./configs/fastfetch.nix
    ./configs/waybar.nix
    ./configs/yazi.nix
    ./configs/fish.nix
    ./configs/starship.nix
    ./configs/mako.nix
    ./configs/rofi.nix
  ];

  home.sessionVariables = {
    TERMINAL = "wezterm";
  };

  programs.home-manager.enable = true;
}
