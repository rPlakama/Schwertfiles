{pkgs, ...}: {
  # -- Services / Programs -- #

  # -- Hyprland -- #
  programs.hyprland = {
    enable = true;
    withUWSM = true;
  };
  programs.hyprlock.enable = true;

  # -- NeoVim -- #
  programs.neovim.enable = true;
  programs.neovim.defaultEditor = true;

  # -- NH -- #
  programs.nh = {
    enable = true;
    flake = "/etc/nixos/";
  };
  # -- Nix-Flatpak -- #
  services.flatpak.enable = true;
  # -- General  -- #
  programs.steam.enable = true;
  # -- Extras -- #
  programs.adb.enable = true;
}
