{ lib, config, pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    # Dev

    git
    neovim
    pnpm
    nodejs_latest
    gcc
    nixd
    alejandra
    rust-analyzer
	rustc
	cargo

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
    zathura
    pandoc
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
