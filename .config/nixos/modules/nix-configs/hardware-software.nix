# -- May  you check you hardware anything -- #
{  override, pkgs, ...}: {
 # -- Services that interact with the hardware -- #

  services.gvfs.enable = true;
  services.udisks2.enable = true;
  services.power-profiles-daemon.enable = true;

  systemd.network.enable = true;
  networking = {
    hostName = "Elisheva";
    networkmanager.enable = true;
  };

 # -- Boot configuration -- #
  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.kernelPatches = [ 
    {
        name = "crashdump-config";
        patch = null;
        extraConfig = ''
	X86_NATIVE_CPU y
      ''; 
    } 
  ];
  boot.kernelParams = [
  "amd_pstate=active"
  ];
  boot.kernelModules = ["msr"];
  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
    timeout = 0;
  };

 # -- Hardware -- #

  hardware.enableAllFirmware = true;
  hardware.cpu.amd.ryzen-smu.enable = true;
  systemd.services.ryzenadj-undervolt = {
    description = " Ryzen undervolt on boot";
    wantedBy = [ "multi-user.target" ];
    after = [ "sysinit.target" ]; 
    serviceConfig = {
      Type = "oneshot";
      ExecStart = "${pkgs.ryzenadj}/bin/ryzenadj  --set-coall=10 --slow-time=5000 --fast-limit=8000 --tctl-temp=90";
    };
  };
}
