{ input, pkgs, ...}: {

  environment.systemPackages = with pkgs; [
    # Dev

    git
    neovim
    nodejs_latest
    gcc
    alejandra
    cargo
    rustc
    unzip
    zip
    p7zip
    yarn
    zulu


    # LSP's

    nixd
    clang-tools
    rust-analyzer
    lua-language-server
    typescript-language-server
    jdt-language-server
    hyprls
    markdown-oxide

    # DAP's

    vscode-js-debug
    gdb

    # System

    wl-clipboard-rs
    nix-output-monitor
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
    qimgv

    # Programs

    firefox
    zathura
    pandoc
    tectonic
    btop
    dropbox
    materialgram
    mpv
    nyaa
    discord
    waybar
    pcalc
    transmission_4
    nautilus
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.caskaydia-cove
    noto-fonts
    oswald
    inter
  ];
}
