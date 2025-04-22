{ config, pkgs, ... }:

{

  nix.settings.experimental-features = ["nix-command" "flakes"];
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [

    # Main Components
      vim
      mesa
      brightnessctl
      gcc
      wezterm
      firefox
      yazi
      xfce.thunar
      deno

    # Services
      git
      p7zip
      yadm
      neovim
      home-manager
      overskride
      pwvucontrol
      telegram-desktop

      # Programs

      wl-clipboard-rs
      swww
      hunspellDicts.pt_BR 
      rust-analyzer 
      nodejs_23 
      alsa-utils 
      ripgrep 
      cargo 
      qbittorrent-enhanced
      mpv 
      hyprpaper
      spotify
      mako
      dropbox
      alejandra
      pyright

    ];
	
   #Fontes

     fonts.packages = with pkgs; [
    nerd-fonts.caskaydia-cove
	noto-fonts
	unifont
	symbola
  ];

   #Hyprland
    programs = {
	hyprland.enable = true;
	};

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
    hardware.bluetooth.enable = true;
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
