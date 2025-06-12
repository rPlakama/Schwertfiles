{
  config,
  pkgs,
  ...
}: {
  home.stateVersion = "24.11";
  imports = [
    ./configs/fastfetch.nix
    ./configs/waybar.nix
    ./configs/yazi.nix
    ./configs/fish.nix
    ./configs/starship.nix
    ./configs/mako.nix
    ./configs/fuzzel.nix
    ./configs/foot.nix
    ./configs/nixvim.nix
    ./configs/spice.nix
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
    image = ./wallpapers/22.jpg;
    polarity = "dark";
    autoEnable = true;
    targets.nixos-icons.enable = true;
    targets.firefox.enable = true;
    targets.vscode.enable = true;
    targets.spicetify.enable = false;
    targets.waybar.font = "sansSerif";
    targets.qt.enable = true;
    fonts.sizes.terminal = 10;
    opacity.terminal = 0.65;
    fonts = {
      sansSerif = config.stylix.fonts.monospace;
      emoji = config.stylix.fonts.monospace;
      monospace = {
        package = pkgs.nerd-fonts.caskaydia-cove;
        name = "CaskaydiaCove Nerd Font Mono";
      };
    };
  };
}
