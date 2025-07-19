{ pkgs, config, ... }: {

# -- Stylix -- #
  stylix = {
    enable = true;
    image = ../wallpapers/backgrounds/space.jpg;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/chalk.yaml";
    polarity = "dark";
    opacity.terminal = 0.95;
    targets.qt.enable = true;

    fonts = {
      sizes.terminal = 10;
      sansSerif = {
        package = pkgs.montserrat;
        name = "Montserrat";
      };
      emoji = config.stylix.fonts.monospace;
      monospace = {
        package = pkgs.nerd-fonts.caskaydia-cove;
        name = "CaskaydiaCove Nerd Font Mono";
      };
    };

    override = {
       base0D = config.stylix.generated.palette.base0D;
       base0E = config.stylix.generated.palette.base0E; 
    };
  };
}
