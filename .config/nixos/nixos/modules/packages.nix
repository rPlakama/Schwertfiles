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
    du-dust
    alsa-utils
    pavucontrol

    # Programs

    firefox
    zathura
    pandoc
    texliveTeTeX
    btop
    dropbox
    telegram-desktop
    mpv
    discord
    vscode

  ];

  fonts.packages = with pkgs; [
    nerd-fonts.caskaydia-cove
    noto-fonts
    oswald
    unifont
    symbola
  ];
}
