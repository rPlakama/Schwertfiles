{ lib, pkgs, ... }: 

{
# -- Fuzzel -- #
  programs.fuzzel = {
    enable = true;
    settings = {
      main = {
        terminal = "${pkgs.foot}/bin/foot -e";
        lines = 3;
        icons-enabled = false;
        anchor = "center";
        width = 10;
      };
      border = {
        radius = 4;
        width = 0;
      };
      colors = {
        selection = lib.mkForce "151718ff";
      };
    };
  };
}
