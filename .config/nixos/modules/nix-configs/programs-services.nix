{ pkgs, ...}: {

  # -- General  -- #
  programs = {
    hyprlock.enable = true;
    hyprland = {
    enable = true;
    };
  };

  # -- General -- #
  programs.neovim.enable = true;
  programs.neovim.defaultEditor = true;
  programs.steam.enable = false;
  programs.localsend.enable = true;
  programs.nh = {
    enable = true;
    flake = "/etc/nixos/";
  };
}
