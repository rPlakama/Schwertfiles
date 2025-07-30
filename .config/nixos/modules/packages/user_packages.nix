{pkgs, ...}: {
  # -- User Programs -- #
  environment.systemPackages = with pkgs; [
    mpv
    btop
    pandoc
    waybar
    lutgen
    spotify
    firefox
    zathura
    dropbox
    discord
    tectonic
    obs-studio
    qbittorrent
    materialgram
  ];
}
