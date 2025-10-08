{ pkgs, ... }:
{
  # -- Utils for Systm -- #
  environment.systemPackages = with pkgs; [
    # -- Core CLI Utilities -- #
    bat
    fd
    eza
    ripgrep
    # -- File & Archive Management -- #
    p7zip
    yazi
    ripdrag
    # -- Desktop & Wayland Integration -- #
    fuzzel
    swayidle
    swww
    xwayland-satellite
    wl-clip-persist
    wl-clipboard-rs
    polkit_gnome

    brightnessctl
    pavucontrol
    # Git
    git
    yadm
  ];

  # -- Font's -- #
  fonts.packages = with pkgs; [
    nerd-fonts.caskaydia-cove
    garamond-libre
    oswald
    font-awesome_6
  ];
}
