{
  pkgs,
  inputs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    # Dev

    git
    neovim
    pnpm
    nodejs_latest
    gcc
    alejandra
    cargo
    rustc
    unzip

# LSP's

    nixd
    clang
    rust-analyzer

    # System

    wl-clipboard-rs
    yadm
    brightnessctl
    swww
    hyprshot
    ripgrep
    fd
    du-dust
    fuzzel
    alsa-utils
    pavucontrol
    smile
    lxqt.lxqt-policykit


    # Programs

    firefox
    zathura
    pandoc
    tectonic
    btop
    dropbox
    telegram-desktop
    mpv
    discord
    obsidian
    waybar
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.caskaydia-cove
    noto-fonts
    oswald
  ];
}
