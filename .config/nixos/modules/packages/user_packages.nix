{ inputs, pkgs, ... }:
{
  # -- User Programs -- #
  environment.systemPackages = with pkgs; [

    mpv
    btop
    qimgv
    tree
    waybar
    lutgen
    discord
    du-dust
    dropbox
    firefox
    spotify
    tidal-dl
    obs-studio
    qbittorrent
    materialgram
  ];
}
