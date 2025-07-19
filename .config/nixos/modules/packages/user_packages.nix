{ pkgs, ... }: {

# -- User Programs -- #
environment.systemPackages = with pkgs; [

  mpv
  btop
  pandoc
  waybar
  quickshell
  firefox
  zathura
  dropbox
  discord
  tectonic
  materialgram
  qbittorrent

  ];
}
