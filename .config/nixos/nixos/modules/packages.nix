{
  config,
  lib,
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    # Dev

    git
    neovim
    yarn
    nodejs_latest
    gcc
    nixd
    alejandra

    # System

    wl-clipboard-rs
    yadm
    brightnessctl
    swww
    hyprshot
    ripgrep
    alsa-utils
    alsa-tools
    pavucontrol
    overskride
    bluez
    bluez-alsa

    # Programs

    firefox
    zathura
    btop
    dropbox
    tidal-hifi
    telegram-desktop
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.caskaydia-cove
    noto-fonts
    oswald
    unifont
    symbola
  ];
}
