{pkgs, ...}: {
  # -- Utils for Systm -- #
  environment.systemPackages = with pkgs; [
    # -- Core CLI Utilities -- #
    bat
    du-dust
    fd
    fzf
    ripgrep
    # -- File & Archive Management -- #
    p7zip
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
    brightnessctl
    playerctl
    ryzenadj
    lxqt.lxqt-policykit
    pavucontrol
    easyeffects
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
