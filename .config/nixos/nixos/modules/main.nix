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
    neovim.defaultEditor = true;
    adb.enable = true;
    neovim.enable = true;
    neovim.viAlias = true;
    neovim.vimAlias = true;
  };

  # Stylix

  stylix = {
    enable = true;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/chalk.yaml";
    polarity = "dark";
    opacity.terminal = 0.95;
    targets.qt.enable = true;
    fonts = {
      sizes.terminal = 10;
      sansSerif = {
        package = pkgs.montserrat;
        name = "Montserrat";
      };
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

#programs.bash.completion.enable = true;
#programs.bash.blesh.enable = true;
#programs.starship.enable = true;

  # NH && Others.

  programs.nh = {
    enable = true;
    clean.enable = true;
    clean.extraArgs = "--keep-since 4d --keep 3";
    flake = "/etc/nixos/";
  };

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
    transmission.enable = true;
    transmission.package = pkgs.transmission_4;
    upower.enable = true;
  };
}
