{ inputs, pkgs, ... }:
{
  # -- Core Home Manager Settings -- #
  imports = [
    ./home-manager/config
    inputs.ignis.homeManagerModules.default
  ];

  home.stateVersion = "25.05";
  # -- Theming & Appearance -- #
  home.pointerCursor = {
    gtk.enable = true;
    x11.enable = true;
    package = pkgs.volantes-cursors;
    name = "volantes_light_cursors";
    size = 24;
  };
  gtk = {
    enable = true;
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };
  };

  # -- Stylix -- #
  stylix.enable = true;
  stylix.targets.waybar.enable = false;
  stylix.targets.vscode.enable = false;

  # home.nix
  programs.ignis = {
    enable = true;

    addToPythonEnv = true; # Lsp Support

    configDir = ./ignis.nix;

    services = {
      bluetooth.enable = true;
      recorder.enable = true;
      audio.enable = true;
      network.enable = true;
    };

    # Enable Sass support
    sass = {
      enable = true;
      useDartSass = true;
    };

    # Extra packages available at runtime
    # These can be regular packages or Python packages
    extraPackages = with pkgs; [
      python313Packages.jinja2
      python313Packages.materialyoucolor
      python313Packages.pillow
    ];
  };
}
