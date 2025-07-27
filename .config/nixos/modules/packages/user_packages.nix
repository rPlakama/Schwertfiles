{pkgs, ...}: {
  # -- User Programs -- #
  environment.systemPackages = with pkgs; [
    mpv
    btop
    pandoc
    waybar
    spotify
    firefox
    zathura
    dropbox
    discord
    tectonic
    obs-studio
    materialgram
  ];
}
