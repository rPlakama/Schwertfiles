{ config, pkgs, ... }:

{
 programs.rofi = {
    enable = true;
    font = "Cascadia Code";
    terminal = "${pkgs.wezterm}/bin/wezterm";
    theme = let
      #Theme configuration by Inherit
      inherit (config.lib.formats.rasi) mkLiteral;
    in {
      "*" = {
        background-color = mkLiteral "transparent";
        foreground-color = mkLiteral "rgba ( 250, 251, 252, 100 % )";
        border-color = mkLiteral "#000000";
        border-radius = mkLiteral "0.5%";
        text-color = mkLiteral "white";
        width = 700;
        spacing = 3;
      };
	  "#listview" = {
      spacing = 2; # vertical space between rows
      };

	   "element" = {
        padding = mkLiteral "2px 0px";
      };

	   "#prompt" = {
        text = "𐖠";  # or "" to hide completely
        text-color = mkLiteral "white";
      };
      "#inputbar" = {
        children = map mkLiteral ["prompt" "entry"];
      };
      "#textbox-prompt-colon" = {
        expand = false;
        str = ":";
        margin = mkLiteral "0px 0.3em 0em 0em";
        text-color = mkLiteral "white";
      };
      "#window" = {
        background-color = mkLiteral "rgba (0,0,0,0.9)";
        border-radius = mkLiteral "0.5%";
        padding = 5;
      };
    }; 
  }; 
}
