{
  lib,
  pkgs,
  ...
}: {
  programs.fuzzel = {
    enable = true;
    settings = {
      main = {
        terminal = "${pkgs.foot}/bin/foot -e";
        lines = 1;
        icons-enabled = false;
        anchor = "center";
        width = 10;
      };
      border = {
        radius = 5;
        width = 0;
      };
      colors = {
        selection = lib.mkForce "00000000";
      };
    };
  };
}
