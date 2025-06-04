{pkgs, ...}: {
  home.stateVersion = "24.11";
  imports = [
    ./configs/fastfetch.nix
    ./configs/waybar.nix
    ./configs/yazi.nix
    ./configs/fish.nix
    ./configs/starship.nix
    ./configs/mako.nix
    ./configs/fuzzel.nix
    ./configs/vesktop.nix
    ./configs/wezterm.nix
    ./configs/helix.nix
    ./configs/shell.nix
  ];

  home.pointerCursor = {
    gtk.enable = true;
    x11.enable = true;
    package = pkgs.volantes-cursors;
    name = "volantes_light_cursors";
    size = 22;
  };
  gtk = {
    enable = true;
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };
  };
  stylix = {
    enable = true;
    image = ./wallpapers/sunrise.png;
    polarity = "dark";
    autoEnable = true;
    targets.firefox.enable = true;
    targets.nixos-icons.enable = true;
    fonts.sizes.terminal = 9;
    opacity.terminal = 0.5;
  };
}
