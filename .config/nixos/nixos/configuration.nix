{
  lib,
  pkgs,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
    ./modules/packages.nix
    ./modules/main.nix
    ./modules/steam.nix
    ./modules/hardware.nix
  ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  swapDevices = lib.mkForce [];
  zramSwap.enable = false;

  # Network.
  networking = {
    hostName = "Elisheva";
    networkmanager.enable = true;
    firewall = {
      enable = true;
      allowedTCPPorts = [53317];
      allowedUDPPorts = [53317];
    };
  };

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
  nix.trustedUsers = [ "root" "@wheel" ];
  users.users.rplakama = {
    isNormalUser = true;
    description = "rPlakama";
    extraGroups = ["networkmanager" "wheel"];
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

  system.stateVersion = "25.05"; # Did you read the comment?
}
