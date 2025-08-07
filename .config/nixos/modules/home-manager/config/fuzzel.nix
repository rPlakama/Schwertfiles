{
  lib,
  pkgs,
  ...
}: {
  # -- Fuzzel -- #
  programs.fuzzel = {
    enable = true;
    settings = {
      main = {
        terminal = "${pkgs.foot}/bin/foot -e";
        lines = 1;
        icons-enabled = false;
        anchor = "top";
        width = 85;
      };
      border = {
        radius = 5;
        width = 0;
      };
      colors = {
        selection = lib.mkForce "151515ff";
      };
    };
  };
}
