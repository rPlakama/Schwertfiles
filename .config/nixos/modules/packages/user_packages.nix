{ pkgs, ... }:
{
  # -- User Programs -- #
  environment.systemPackages = with pkgs; [
    mpv
    btop
    lutgen
    dropbox
    firefox
    tidal-dl
    obs-studio
    quickshell
    qbittorrent
    materialgram
  ];
}
