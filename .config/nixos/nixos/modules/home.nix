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
    ./configs/zed.nix
    ./configs/nixvim.nix
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

  # Services

  services.hyprpolkitagent.enable = true;

  stylix = {
    enable = true;
    image = ./wallpapers/sunrise.png;
    polarity = "dark";
    autoEnable = true;
    targets.firefox.enable = true;
    targets.nixos-icons.enable = true;
    targets.nixvim.transparentBackground.main = true;
    targets.nixvim.transparentBackground.numberLine = true;
    targets.nixvim.transparentBackground.signColumn = true;
    fonts.sizes.terminal = 10;
    opacity.terminal = 0.85;
    fonts = {
      serif = config.stylix.fonts.monospace;
      sansSerif = config.stylix.fonts.monospace;
      emoji = config.stylix.fonts.monospace;
      monospace = {
        package = pkgs.nerd-fonts.caskaydia-cove;
        name = "CaskaydiaCove Nerd Font Mono";
      };
    };
  };
}
