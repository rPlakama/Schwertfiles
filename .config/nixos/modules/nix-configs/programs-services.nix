{ pkgs, config, ... }:
{
  # -- hyprland  -- #
  programs.hyprlock.enable = true;
  programs.hyprland.enable = true;

  # -- General -- #
  programs.neovim.enable = true;
  programs.neovim.defaultEditor = true;
  programs.steam = {
    enable = true;
    gamescopeSession.enable = true;
  };
  programs.localsend.enable = true;
  programs.nh = {
    enable = true;
    flake = "/etc/nixos/";
  };
}
