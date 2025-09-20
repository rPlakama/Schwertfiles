{ pkgs, ... }:
{
  # -- Utils for Systm -- #
  environment.systemPackages = with pkgs; [
    # -- Core CLI Utilities -- #
    bat
    du-dust
    fd
    tree
    fzf
    ripgrep
    # -- File & Archive Management -- #
    p7zip
    yazi
    ripdrag
    # -- Desktop & Wayland Integration -- #
    fuzzel
    hyprshot
    qimgv
    swww
    libnotify
    wl-clip-persist
    wl-clipboard-rs
    polkit_gnome
    # -- System & Hardware Control -- #
    brightnessctl
    ryzenadj
    pavucontrol

    # -- Development & Dotfiles -- #
    git
    yadm
    # -- Nix Ecosystem -- #
    nix-output-monitor
  ];

  # -- Font's -- #
  fonts.packages = with pkgs; [
    nerd-fonts.caskaydia-cove
    garamond-libre
    oswald
    font-awesome_6
  ];
}
