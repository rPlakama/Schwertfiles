{
  config,
  pkgs,
  ...
}: {
  # Nix Configurations.
  nix.settings.experimental-features = ["nix-command" "flakes"];
  nixpkgs.config.allowUnfree = true;
  security.polkit.enable = true;
  qt.enable = true;

  hardware = {
    bluetooth = {
      enable = true;
      powerOnBoot = false;
    };
    graphics.enable = true;
  };
  systemd.services = {
    systemd-udev-settle.enable = false;
    NetworkManager-wait-online.enable = false;
  };
  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
    timeout = 0;
  };

  # Hyprland
  programs.hyprland = {
    enable = true;
  };

  # Programs.
  programs = {
    hyprlock.enable = true;
    steam.enable = true;
    neovim.defaultEditor = true;
    neovim.enable = true;
    neovim.viAlias = true;
    neovim.vimAlias = true;
  };

  stylix = {
    enable = true;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/chalk.yaml";
    polarity = "dark";
    opacity.terminal = 0.75;
    targets.qt.enable = true;
    fonts = {
      sizes.terminal = 10;
      sansSerif = config.stylix.fonts.monospace;
      emoji = config.stylix.fonts.monospace;
      monospace = {
        package = pkgs.nerd-fonts.caskaydia-cove;
        name = "CaskaydiaCove Nerd Font Mono";
      };
    };
  };

  # Shell

  users.defaultUserShell = pkgs.fish;
  programs.fish.enable = true;

  # Services.
  services = {
    displayManager = {
      autoLogin.enable = true;
      autoLogin.user = "rplakama";
      sddm.enable = true;
      sddm.wayland.enable = true;
    };
    gvfs.enable = true;
    udisks2.enable = true;
    tumbler.enable = true;
    upower.enable = true;
    blueman.enable = true;
    power-profiles-daemon.enable = true;
  };

  #Thunar
  programs = {
    xfconf.enable = true;
    thunar.enable = true;
    thunar.plugins = with pkgs.xfce; [
      thunar-volman
      thunar-archive-plugin
      thunar-media-tags-plugin
    ];
  };
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 7d";
  };
}
