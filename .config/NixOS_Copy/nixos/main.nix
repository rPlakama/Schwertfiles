{ config, pkgs, ... }:

{

  nix.settings.experimental-features = ["nix-command" "flakes"];
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [

    # Main Components

      mesa
      firefox
      yazi

    # Services

      git
      neovim
      home-manager

    ];
	
#Hyprland
    programs = {
	hyprland.enable = true;
	};
# You may need to update to 25v, nerd fonts unstable needs it.
  fonts.packages = with pkgs; [
  nerd-fonts.geist-mono
  nerd-fonts.caskaydia-cove
    noto-fonts
    oswald
    unifont
    symbola

  ];

# sddm 
	services.displayManager.sddm = {
		enable = true;
		wayland.enable = true;
	};
    # Editor 
      programs.neovim = { 
      	enable = true;
	defaultEditor = true;
	};

    # Ativar-Serviços 
    hardware.bluetooth = {
		enable = true;
		};


    nix.gc = {
    	automatic = true;
	dates = "weekly";
	options = "--delete-older-than 7d";
	};

# Serviços de Bateria 
# Better scheduling for CPU cycles - thanks System76!!!
  services.system76-scheduler.settings.cfsProfiles.enable = true;

  # Enable TLP (better than gnomes internal power manager)
  services.tlp = {
    enable = true;
    settings = {
      CPU_BOOST_ON_AC = 1;
      CPU_BOOST_ON_BAT = 0;
      CPU_SCALING_GOVERNOR_ON_AC = "performance";
      CPU_SCALING_GOVERNOR_ON_BAT = "powersave";
    };
  };

  # Enable powertop
  powerManagement.powertop.enable = true;

    # Boot
    boot = { 
    	loader.timeout = 0;
	};
}
