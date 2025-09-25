{ inputs, pkgs, ... }:
{
  # -- User Programs -- #
  environment.systemPackages = with pkgs; [
    mpv
    btop
    waybar
    lutgen
    discord
    dropbox
    firefox
    tidal-dl
    obs-studio
    qbittorrent
    materialgram
  ];
}
