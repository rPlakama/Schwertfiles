{
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
    alejandra
    cargo
    rustc
    unzip

    # LSP's
    nixd
    clang
    rust-analyzer
    javascript-typescript-langserver
    java-language-server
    typescript

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

  ];

  fonts.packages = with pkgs; [
    nerd-fonts.caskaydia-cove
    noto-fonts
    oswald
    unifont
    symbola
  ];
}
