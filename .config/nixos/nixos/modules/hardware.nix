{ pkgs, ... }: {

# Ryzen, Power-profiles.

boot.kernelParams = [ "amd_pstate=guided" ];
boot.kernelPackages = pkgs.linuxPackages_latest;

services.tlp = {
 enable = true;
 settings = {

    # --- On AC Power ---
    CPU_SCALING_GOVERNOR_ON_AC = "performance";
    CPU_ENERGY_PERF_POLICY_ON_AC = "performance";
    CPU_BOOST_ON_AC = "1";
    PLATFORM_PROFILE_ON_AC = "performance";
    RADEON_DPM_PERF_LEVEL_ON_AC = "auto";

    # --- On Battery Power ---
    CPU_SCALING_GOVERNOR_ON_BAT = "schedutil";
    CPU_ENERGY_PERF_POLICY_ON_BAT = "power";
    CPU_BOOST_ON_BAT = "0";
    CPU_HWP_DYN_BOOST_ON_BAT = "0"; 
    PLATFORM_PROFILE_ON_BAT = "low-power";
    AMDGPU_ABM_LEVEL_ON_BAT = "1"; 
    RADEON_DPM_PERF_LEVEL_ON_BAT = "auto";
 };
};
}
