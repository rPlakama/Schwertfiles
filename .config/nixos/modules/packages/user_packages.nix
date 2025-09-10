{ inputs, pkgs, ... }:
{
  # -- User Programs -- #
  environment.systemPackages = with pkgs; [
    ags
    mpv
    waybar
    btop
    lutgen
    dropbox
    firefox
    tidal-dl
    obs-studio
    qbittorrent
    materialgram
  ];
}
