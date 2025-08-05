{pkgs, ...}: {
  # -- Services / Programs -- #

  # -- Hyprland -- #
  programs = {
    hyprlock.enable = true;
    hyprland = {
    enable = true;
    };
  };

  # -- NeoVim -- #
  programs.neovim.enable = true;
  programs.neovim.defaultEditor = true;

  # -- NH -- #
  programs.nh = {
    enable = true;
    flake = "/etc/nixos/";
  };



}
