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
	pnpm
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
    pavucontrol
	bluez

    # Programs

    firefox
    zathura
    btop
    dropbox
    tidal-hifi
    telegram-desktop
    mpv
	discord
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.caskaydia-cove
    noto-fonts
    oswald
    unifont
    symbola
  ];
}
