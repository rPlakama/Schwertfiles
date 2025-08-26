{pkgs, ...}: {
  # -- User Programs -- #
  environment.systemPackages = with pkgs; [
    mpv
    btop
    pandoc
    lutgen
    dropbox
    firefox
    tidal-dl
    obs-studio
    qbittorrent
    materialgram
  ];
}
