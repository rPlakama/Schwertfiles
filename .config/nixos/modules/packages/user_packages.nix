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
    tidal-dl
    obs-studio
    qbittorrent
    materialgram
  ];
}
