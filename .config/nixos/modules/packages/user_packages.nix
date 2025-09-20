{ inputs, pkgs, ... }:
{
  # -- User Programs -- #
  environment.systemPackages = with pkgs; [
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
