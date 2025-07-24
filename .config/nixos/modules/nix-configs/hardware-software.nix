# -- May  you check you hardware anything -- #
{pkgs, ...}: {
  # -- Services that interact with the hardware -- #

  services.gvfs.enable = true;
  services.udisks2.enable = true;
  services.power-profiles-daemon.enable = true;

  # -- Systemd -- #

  systemd.services = {
    systemd-udev-settle.enable = false;
    NetworkManager-wait-online.enable = false;
  };

  systemd.network.enable = true;
  networking = {
    hostName = "Elisheva";
    networkmanager.enable = true;
  };

  # -- Boot configuration -- #

  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.kernelParams = ["amd_pstate=active"];
  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
    timeout = 0;
  };

  # -- Hardware -- #

  hardware.enableAllFirmware = true;
  hardware.enableRedistributableFirmware = true;
}
