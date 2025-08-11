{pkgs, ...}: {
  # -- User Programs -- #
  environment.systemPackages = with pkgs; [
    mpv
    btop
    gemini-cli
    tidal-dl
    pandoc
    waybar
    lutgen
    pandoc
    dropbox
    firefox
    obs-studio
    qbittorrent
    materialgram
  ];
}
