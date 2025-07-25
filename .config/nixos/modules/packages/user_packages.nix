{pkgs, ...}: {
  # -- User Programs -- #
  services.flatpak.enable = true;
  environment.systemPackages = with pkgs; [
    mpv
    btop
    pandoc
    spotify
    waybar
    firefox
    zathura
    dropbox
    discord
    tectonic
    obs-studio
    materialgram
    qbittorrent
  ];
}
