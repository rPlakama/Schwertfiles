{ config, pkgs, ... }:

{
 programs.rofi = {
    enable = true;
    terminal = "${pkgs.wezterm}/bin/wezterm";
    theme = let
      #Theme configuration by Inherit
      inherit (config.lib.formats.rasi) mkLiteral;
    in {
      "*" = {
        border-radius = mkLiteral "0.5%";
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
      };
      "#inputbar" = {
        children = map mkLiteral ["prompt" "entry"];
      };
      "#textbox-prompt-colon" = {
        expand = false;
        str = ":";
        margin = mkLiteral "0px 0.3em 0em 0em";
      };
      "#window" = {
        border-radius = mkLiteral "0.5%";
        padding = 5;
      };
    }; 
  }; 
}
