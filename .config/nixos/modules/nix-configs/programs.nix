{...}: {
  # -- For programs that need to be enabled -- #

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
  # -- Steam -- #
  programs.steam.enable = true;
  # -- Extras -- #
  programs.adb.enable = true;
}
