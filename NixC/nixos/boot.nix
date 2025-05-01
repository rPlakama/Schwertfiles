{ config, lib, ... }:

{

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/CB91-E86E";
      fsType = "vfat";
      options = [ "fmask=0077" "dmask=0077" "nofail" "x-systemd.device-timeout=1s" ];
    };
fileSystems."/" = {
  device = "/dev/sda1";
  fsType = "ext4";
  options = [ "defaults" ];
};

boot.kernelParams = [ "quiet" "splash" ];
boot.initrd.checkJournalingFS = false; # Skip fsck for faster boot

}
