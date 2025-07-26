{pkgs, ...}: {
  # -- User Programs -- #
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
  ];
}
