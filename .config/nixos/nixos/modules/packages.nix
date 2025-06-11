{
  lib,
  config,
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
    clang
    nixd
    alejandra
    cargo
    rust-analyzer
    rustc

    # System

    wl-clipboard-rs
    yadm
    brightnessctl
    swww
    hyprshot
    ripgrep
    fd
    bat
    du-dust
    alsa-utils
    pavucontrol

    # Programs

    firefox
    tidal-hifi
    zathura
    pandoc
    btop
    dropbox
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
