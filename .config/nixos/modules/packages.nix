{
  inputs,
  pkgs,
  ...
}: {
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
    nemo

    # Programs

    firefox
    zathura
    pandoc
    tectonic
    btop
    dropbox
    materialgram
    mpv
    discord
    waybar
    transmission_4
    inputs.quickshell.packages.x86_64-linux.default
    kdePackages.qtdeclarative
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.caskaydia-cove
    noto-fonts
    oswald
    inter
  ];
}
