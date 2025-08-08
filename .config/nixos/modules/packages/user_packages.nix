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
    zathura
    dropbox
    firefox
    obs-studio
    qbittorrent
    materialgram
  ];
}
