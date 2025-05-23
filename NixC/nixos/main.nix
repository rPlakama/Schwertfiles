{ config, pkgs, ... }:
{
  # Nix Configurations. 
  nix.settings.experimental-features = ["nix-command" "flakes"];
  nixpkgs.config.allowUnfree = true;
  hardware = { bluetooth = { enable = true; powerOnBoot = false; }; graphics.enable = true; };
  systemd.services = { systemd-udev-settle.enable = false; NetworkManager-wait-online.enable = false;};
  boot.loader = { systemd-boot.enable = true; efi.canTouchEfiVariables = true; timeout = 0;};

  # Pkgs:
  environment.systemPackages = with pkgs; [
    git
    neovim
    home-manager
  ];
  fonts.packages = with pkgs; [
    nerd-fonts.caskaydia-cove
    noto-fonts
    oswald
    unifont
    symbola
  ];

  # Programs.
  programs = {
  hyprland.enable = true;
  hyprlock.enable = true;
  fish.enable = true;
  neovim.enable = true;
  neovim.defaultEditor = true;
  neovim.viAlias = true;
};

  # Services.	
  services = {
    displayManager = {
      autoLogin.enable = true;
      autoLogin.user = "rplakama";
      sddm.enable = true;
      sddm.wayland.enable = true;
    };
  system76-scheduler.settings.cfsProfiles.enable = true;
  };
  #Thunar 
  programs.xfconf.enable = true;
  programs.thunar.enable = true;
  programs.thunar.plugins = with pkgs.xfce; [
    thunar-volman
    thunar-archive-plugin
    thunar-media-tags-plugin
  ];
  services.gvfs.enable = true;
  services.udisks2.enable = true;

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 7d";
  };

}
