{ lib, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ./modules/packages.nix
      ./modules/main.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  swapDevices = lib.mkForce [ ];
  zramSwap.enable = false;

  # Network.
  networking.hostName = "Elisheva"; 
  networking.networkmanager.enable = true;

  # Region.
  time.timeZone = "America/Recife";
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "pt_BR.UTF-8";
    LC_IDENTIFICATION = "pt_BR.UTF-8";
    LC_MEASUREMENT = "pt_BR.UTF-8";
    LC_MONETARY = "pt_BR.UTF-8";
    LC_NAME = "pt_BR.UTF-8";
    LC_NUMERIC = "pt_BR.UTF-8";
    LC_PAPER = "pt_BR.UTF-8";
    LC_TELEPHONE = "pt_BR.UTF-8";
    LC_TIME = "pt_BR.UTF-8";
  };
  # Console.
  console.keyMap = "br-abnt";

  #User
  users.users.rplakama = {
    isNormalUser = true;
    description = "rPlakama";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.fish; #Tem que habilitar, tá no main.nix
  };

  #Audio 
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };


  system.stateVersion = "24.11"; # Did you read the comment?

}
