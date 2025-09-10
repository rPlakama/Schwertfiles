{
  lib,
  pkgs,
  ...
}:
{
  # -- Fuzzel -- #
  programs.tofi = {
    enable = true;
    settings = {
      terminal = "foot";
    };
  };
  programs.fuzzel = {
    enable = true;
    settings = {
      main = {
        terminal = "${pkgs.foot}/bin/foot -e";
        icons-enabled = false;
        anchor = "top";
        lines = 7;
      };
      border = {
        selection-radius = 2;
        radius = 1;
        width = 0;
      };
      colors.selection = lib.mkForce "#151515ff";
    };
  };
}
