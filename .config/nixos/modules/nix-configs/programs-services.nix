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

   # -- General -- #
  services.flatpak.enable = true;
  services.lact.enable = true;
  programs.steam.enable = true;
  programs.adb.enable = true;
}
