# -- May  you check you hardware anything -- #
{ pkgs, ... }: 

{
# -- Services that interact with the hardware -- #
 services.power-profiles-daemon.enable = true;
 services.gvfs.enable = true;
 services.udisks2.enable = true ;
   systemd.services = {
    systemd-udev-settle.enable = false;
    NetworkManager-wait-online.enable = false;
  };
 networking = {
   hostName = "Elisheva";
   wireless.iwd.enable = true;
  };
# -- Boot configuration -- #
 boot.kernelParams = [ "amd_pstate=active" ];
 boot.kernelPackages = pkgs.linuxPackages_latest;
 boot.loader = {
  systemd-boot.enable = true;
  efi.canTouchEfiVariables = true;
  timeout = 0;
  };
}
