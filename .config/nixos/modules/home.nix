{
  config,
  pkgs,
  ...
}: {
  home.stateVersion = "24.11";
  imports = [
    ./configs/fastfetch.nix
    ./configs/yazi.nix
    ./configs/fish.nix
    ./configs/starship.nix
    ./configs/mako.nix
    ./configs/foot.nix
    ./configs/spice.nix
    ./configs/fuzzel.nix
    ./configs/zed-editor.nix
  ];
  # Home Configurations
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
  # Stylix
  stylix.enable = true;
}
