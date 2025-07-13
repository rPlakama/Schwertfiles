{ pkgs, ... }: 

{

 services.power-profiles-daemon.enable = true;
 boot.kernelParams = [ "amd_pstate=active" ];
 boot.kernelPackages = pkgs.linuxPackages_latest;

}
