{
  config,
  pkgs,
  ...
}: {
  # Nix Configurations.
  nix.settings.experimental-features = ["nix-command" "flakes"];
  nixpkgs.config.allowUnfree = true;
  boot.kernelPackages = pkgs.linuxPackages_latest;
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

  # Programs.
  programs = {
    hyprland.enable = true;
    hyprlock.enable = true;
    steam.enable = true;
    neovim.defaultEditor = true;
    neovim.enable = true;
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
    blueman.enable = true;
    flatpak.enable = true;
    # For Flatpak, seek https://flathub.org/setup/NixOS. There is a extra step for working on NixOS. In this case: | flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo | Without the bars. So you can add the repo.
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
