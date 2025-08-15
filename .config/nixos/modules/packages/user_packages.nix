{pkgs, ...}: {
  # -- User Programs -- #
  environment.systemPackages = with pkgs; [
    mpv
    btop
    pandoc
    lutgen
    pandoc
    dropbox
    firefox
    obsidian
    tidal-dl
    obs-studio
    gemini-cli
    qbittorrent
    materialgram
  ];
}
