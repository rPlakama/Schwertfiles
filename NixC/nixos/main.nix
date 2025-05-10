{ config, pkgs, ... }:
{
  # Nix Configurations. 
  nix.settings.experimental-features = ["nix-command" "flakes"];
  nixpkgs.config.allowUnfree = true;

  hardware.bluetooth.enable = true;
  boot.loader.timeout = 0;
  hardware.graphics.enable = true;

  systemd.services.systemd-udev-settle.enable = false;
  systemd.services.NetworkManager-wait-online.enable = false;

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

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 7d";
  };

}
