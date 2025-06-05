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
	rust-analyzer

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
	powertop
	

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
	qemu

  ];

  fonts.packages = with pkgs; [
    nerd-fonts.caskaydia-cove
    noto-fonts
    oswald
    unifont
    symbola
  ];
}
