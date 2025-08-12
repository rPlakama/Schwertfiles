{pkgs, ...}: {
  # -- User Programs -- #
  environment.systemPackages = with pkgs; [
    mpv
    btop
    gemini-cli
    tidal-dl
    pandoc
    lutgen
    pandoc
    dropbox
    firefox
    obs-studio
    qbittorrent
    materialgram
  ];
}
