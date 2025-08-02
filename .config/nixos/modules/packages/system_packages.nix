{pkgs, ...}: {
  # -- Utils for Systm -- #
  environment.systemPackages = with pkgs; [
    # -- Core CLI Utilities -- #
    bat
    du-dust
    eza
    fd
    fzf
    ripgrep
    # -- File & Archive Management -- #
    p7zip
    unzip
    zip
    yazi
    ripdrag 
    # -- Desktop & Wayland Integration -- #
    fuzzel
    hyprshot
    qimgv
    smile
    swww
    libnotify
    wl-clip-persist
    wl-clipboard-rs

    # -- System & Hardware Control -- #
    alsa-utils
    zenmonitor
    brightnessctl
    playerctl
    ryzenadj
    lxqt.lxqt-policykit
    pavucontrol
    stress-ng

    # -- Development & Dotfiles -- #
    git
    yadm
    # -- Nix Ecosystem -- #
    nix-output-monitor
  ];

  # -- Font's -- #
  fonts.packages = with pkgs; [
    nerd-fonts.caskaydia-cove
    oswald
    font-awesome_6
  ];
}
