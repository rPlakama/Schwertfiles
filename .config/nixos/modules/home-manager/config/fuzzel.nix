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
        anchor = "center";
        lines = 15;
      };
      border = {
        selection-radius = 2;
        radius = 5;
        width = 0;
      };
      colors.selection = lib.mkForce "#151515ff";
    };
  };
}
