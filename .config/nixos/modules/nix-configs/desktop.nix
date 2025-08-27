#Hardware configurations and other programs destined to the desktop usage. To remove or disable such, comment out in the default.nix from the host directory.
  { pkgs , ... }: { 
    hardware.graphics = {
    enable = true;
  };

  environment.systemPackages = with pkgs; [
  discord
  blender
  ];



  programs.steam.enable = true;
  services.xserver.videoDrivers = ["nvidia"];
  hardware.nvidia = {
    modesetting.enable = true;
    open = false;
    nvidiaSettings = true;
  };
}
