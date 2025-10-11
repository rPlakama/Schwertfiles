{ pkgs, config, ... }:

{
  stylix = {
    enable = true;
    # The base16Scheme is now redundant because of the override below
    base16Scheme = "${pkgs.base16-schemes}/share/themes/chalk.yaml";
    polarity = "dark";
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

    # Override with the full Base16 Shadcn Chalk theme
   #override = {
   #  base00 = "101010";
   #  base01 = "0f172a";
   #  base02 = "1e293b";
   #  base03 = "334155";
   #  base04 = "475569";
   #  base05 = "94a3b8";
   #  base06 = "e2e8f0";
   #  base07 = "f8fafc";
   #  base08 = "ef4444";
   #  base09 = "f97316";
   #  base0A = "eab308";
   #  base0B = "22c55e";
   #  base0C = "06b6d4";
   #  base0D = "3b82f6";
   #  base0E = "8b5cf6";
   #  base0F = "f43f5e";
   #};
  };
}
