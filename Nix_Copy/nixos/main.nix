{ config, pkgs, ... }:

{
  # Habilitando funcionalidades experimentais do Nix
  nix.settings.experimental-features = ["nix-command" "flakes"];

  # Permitindo pacotes não livres
  nixpkgs.config.allowUnfree = true;

  # Habilitando programas:
  environment.systemPackages = with pkgs; [
    # Main Components
    mesa
    yazi

    # Serviços
    git
    neovim
    home-manager
  ];

  # Habilitando programas com configurações
  programs = {
    hyprland.enable = true;
	hyprlock.enable = true;
    fish.enable = true;
    neovim = {
      enable = true;
      defaultEditor = true;
    };
  };

  # Configurando fontes
  fonts.packages = with pkgs; [
    nerd-fonts.geist-mono
    nerd-fonts.caskaydia-cove
    noto-fonts
    oswald
    unifont
    symbola
  ];

  services = {
  	displayManager = {
	  autoLogin.user = "rplakama";
	  autoLogin.enable = true;
	  };

    displayManager.sddm = {
      enable = true;
      wayland.enable = true;
    };

    # Serviços de Bateria
    system76-scheduler.settings.cfsProfiles.enable = true;

    tlp = {
      enable = true;
      settings = {
        CPU_BOOST_ON_AC = 1;
        CPU_BOOST_ON_BAT = 0;
        CPU_SCALING_GOVERNOR_ON_AC = "performance";
        CPU_SCALING_GOVERNOR_ON_BAT = "powersave";
      };
    };
  };

  # Otimizações de energia
  powerManagement.powertop.enable = true;

  # Coletor de lixo do Nix
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 7d";
  };

  # Hardware
  hardware.bluetooth.enable = true;
  boot.loader.timeout = 0;


  # Systemd
  systemd.services.systemd-udev-settle.enable = false;
  systemd.services.NetworkManager-wait-online.enable = false;
}

