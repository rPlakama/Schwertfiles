{
  config,
  pkgs,
  ...
}: {
  programs.rofi = {
    enable = false;
    terminal = "${pkgs.wezterm}/bin/wezterm";
    extraConfig = {
      show-icons = false;
      drun-display-format = "{name}";
      display-drun = ""; # Left as is, assuming intentional
      lines = 1;
      scrollbar = false;
    };
    theme = {
      window = {
        width = 600;
      };
      mainbox = {
        children = [
          "inputbar"
          "listview"
        ];
      };
      listview = {
        lines = 1;
        fixed-height = true;
      };
    };
  };
}
